import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';
import 'package:auth/auth.dart';
import 'package:planner/planner.dart';

part 'planner_tables_board.freezed.dart';
part 'planner_tables_board.g.dart';

enum PlannerDirection {
  left,
  right,
  top,
  bottom;

  bool get isHorizontal =>
      this == PlannerDirection.left || this == PlannerDirection.right;
  bool get isVertical =>
      this == PlannerDirection.top || this == PlannerDirection.bottom;

  int get sizeMultiplier =>
      (this == PlannerDirection.left || this == PlannerDirection.top) ? -1 : 1;
}

enum BoardStatus {
  uninitialized,
  empty,
  standard,
}

enum BoardAction {
  none,
  initializing,
  placeBorder,
  chooseExtendBorder,
  chooseBorderType,
  addTable,
  tableInfo,
  resizeLeft,
  resizeRight,
  resizeTop,
  resizeBottom,
  moveTable;

  SystemMouseCursor? get cursor {
    switch (this) {
      case resizeLeft:
      case resizeRight:
        return SystemMouseCursors.resizeLeftRight;
      case resizeTop:
      case resizeBottom:
        return SystemMouseCursors.resizeUpDown;
      case moveTable:
        return SystemMouseCursors.move;
      case placeBorder:
      case addTable:
        return SystemMouseCursors.click;
      default:
        return null;
    }
  }
}

@freezed
class PlannerTablesBoard with _$PlannerTablesBoard {
  const PlannerTablesBoard._();
  factory PlannerTablesBoard(
          {required List<PlannerTable> tables,
          required List<PlannerBorder> borders,
          required double precision,
          @JsonKey(ignore: true)
          @Default(BoardAction.none)
          BoardAction? currentAction,
          @JsonKey(ignore: true) int? selectedTable,
          @JsonKey(ignore: true) PlannerDirection? lastBorderExtension,
          @JsonKey(ignore: true) PlannerDirection? currentBorderExtension,
          @JsonKey(ignore: true)
          @Default(BoxConstraints())
          BoxConstraints constraints,
          @Default([]) @JsonKey(ignore: true) List<String> allowedTables,
          @Default(null) @JsonKey(ignore: true) Function(PlannerTable)? onSelectTable,
          @JsonKey(ignore: true) @Default(false) bool isChanged}) =
      _PlannerTablesBoard;

  factory PlannerTablesBoard.fromJson(Map<String, dynamic> json) =>
      _$PlannerTablesBoardFromJson(json);

  BoardStatus get status {
    if (precision <= -1 || currentAction == BoardAction.initializing) {
      return BoardStatus.uninitialized;
    }
    if (tables.isEmpty && borders.isEmpty) {
      return BoardStatus.empty;
    }
    return BoardStatus.standard;
  }

  Size get maxConstraints {
    double maxRight = 0;
    double maxBottom = 0;
    for (final obj in [...tables, ...borders]) {
      if (obj.toRect(precision).right > maxRight)
        maxRight = obj.toRect(precision).right;
      if (obj.toRect(precision).bottom > maxBottom)
        maxBottom = obj.toRect(precision).bottom;
    }
    return Size(maxRight * 1.2, maxBottom * 1.2);
  }

  bool canUpdateTable(String id, {required bool isTable}) {
    final PlannerObject data = isTable
        ? tables.where((element) => element.id == id).first
        : borders[int.parse(id)];
    return doesTableNotCollide(data, id, isTable: isTable) &&
        isTableInBounds(data);
  }

  bool doesTableNotCollide(PlannerObject data, String id,
      {required bool isTable}) {
    for (final table in tables) {
      if ((!isTable || table.id != id) &&
          data.toNewCollisionRect(precision).overlaps(table.applyTablesToCollision(
              table.toNewRect(precision), precision))) {
        return false;
      }
    }
    for (final (i, border) in borders.indexed) {
      if ((isTable || i != int.parse(id)) &&
          data.toNewCollisionRect(precision).overlaps(border.toRect(precision))) {
        return false;
      }
    }
    return true;
  }

  bool extendBorderOnEnd() {
    return lastBorderExtension == PlannerDirection.bottom ||
        lastBorderExtension == PlannerDirection.right;
  }

  bool canExtendBorderInDirection(int index, PlannerDirection direction) {
    for (final table in tables) {
      if (borders[index - 1 > 0 ? index - 1 : 0]
          .toExtendRect(precision, direction, onEnd: extendBorderOnEnd())
          .overlaps(table.toRect())) {
        return false;
      }
    }
    for (final border in borders) {
      if (borders[index - 1 > 0 ? index - 1 : 0]
          .toExtendRect(precision, direction, onEnd: extendBorderOnEnd())
          .overlaps(border.toRect(precision))) {
        return false;
      }
    }
    return true;
  }

  bool canAddChairs(PlannerDirection direction) {
    final table = tables[selectedTable!];
    switch (direction) {
      case PlannerDirection.top:
        if (table.width < (table.seatsTop + 1) * precision) {
          return false;
        }
        break;
      case PlannerDirection.bottom:
        if (table.width < (table.seatsBottom + 1) * precision) {
          return false;
        }
        break;
      case PlannerDirection.left:
        if (table.height < (table.seatsLeft + 1) * precision) {
          return false;
        }
        break;
      case PlannerDirection.right:
        if (table.height < (table.seatsRight + 1) * precision) {
          return false;
        }
        break;
    }
    final newRect = table
        .modifyChairs(direction, precision, false)
        .applyTablesToCollision(table.toRect(), precision);
    final id = table.id;
    for (final table in tables) {
      if (table.id != id &&
          newRect.overlaps(table.applyTablesToCollision(
              table.toNewRect(precision), precision))) {
        return false;
      }
    }
    for (final border in borders) {
      if (newRect.overlaps(border.toRect(precision))) {
        return false;
      }
    }
    return true;
  }

  bool canSubtractChairs(PlannerDirection direction) {
    final table = tables[selectedTable!];
    switch (direction) {
      case PlannerDirection.top:
        return table.seatsTop > 0;
      case PlannerDirection.bottom:
        return table.seatsBottom > 0;
      case PlannerDirection.left:
        return table.seatsLeft > 0;
      case PlannerDirection.right:
        return table.seatsRight > 0;
    }
  }

  bool isTableInBounds(PlannerObject data) {
    final Rect newRect = data.toNewRect(precision);
    return !(newRect.left < 0 ||
        newRect.top < 0 ||
        newRect.left + newRect.width > constraints.maxWidth ||
        newRect.top + newRect.height > constraints.maxHeight);
  }

  bool isBorderFinished() {
    if (borders.length < 4) {
      return false;
    }
    return borders.first.toBroadenedRect(precision).overlaps(borders.last
        .onDragEnd(DragEndDetails(), precision)
        .toBroadenedRect(precision));
  }

  bool isSelectedTable(PlannerTable table) {
    return table == tables.elementAtOrNull(selectedTable ?? tables.length);
  }
}

@riverpod
class PlannerInfo extends _$PlannerInfo {
  @override
  Future<PlannerTablesBoard> build(AuthType type, [int? restaurantID]) async {
    if (type == AuthType.user && restaurantID == null) {
      throw ArgumentError();
    }
    final token = ref.read(authProvider).value!;
    try {
      final response = await Dio().get(
          '${dotenv.env['${type.name.toUpperCase()}_API_URL']!}planner-info',
          queryParameters: type == AuthType.user ? {"restaurant_id": restaurantID} : null,
          options:
              Options(headers: {"Authorization": "Bearer ${token.jwtToken}"}));
      return PlannerTablesBoard.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        Map responseBody = e.response!.data;
        throw responseBody['detail'];
      } else {
        throw "Coś poszło nie tak przy wczytywaniu planu restauracji. Spróbuj ponownie później lub odśwież stronę";
      }
    }
  }

  void updateConstraints(BoxConstraints constraints) {
    if (state.value!.constraints == constraints) return;
    state = AsyncData(state.value!.copyWith(constraints: constraints));
  }

  void onTableDragStart(String id, DragStartDetails details,
      [PlannerDirection? direction]) {
    if (type != AuthType.owner) return;
    state = AsyncData(state.value!.copyWith(tables: [
      for (final table in state.value!.tables)
        if (table.id == id) table.onDragStart(details, direction) else table
    ]));
  }

  void onTableDragUpdate(String id, DragUpdateDetails details,
      [PlannerDirection? direction]) {
    if (type != AuthType.owner) return;
    state = AsyncData(state.value!.copyWith(tables: [
      for (final table in state.value!.tables)
        if (table.id == id)
          table.onDragUpdate(details, state.value!.precision, direction)
        else
          table
    ]));
  }

  void onTableDragEnd(
    String id,
    DragEndDetails details,
  ) {
    if (type != AuthType.owner) return;
    state = AsyncData(state.value!.copyWith(
        isChanged: state.value!.canUpdateTable(id, isTable: true)
            ? true
            : state.value!.isChanged,
        tables: [
          for (final table in state.value!.tables)
            if (table.id == id)
              state.value!.canUpdateTable(id, isTable: true)
                  ? table.onDragEnd(details, state.value!.precision)
                  : table.resetDrag()
            else
              table
        ]));
  }

  void onBorderDragStart(DragStartDetails details,
      [PlannerDirection? direction]) {
    if (type != AuthType.owner) return;
    state = AsyncData(state.value!.copyWith(borders: [
      ...List.from(state.value!.borders)..removeLast(),
      state.value!.borders.length > 1
          ? state.value!.borders.last.onPlaceAndDragStart(
              details,
              direction!,
              state.value!.borders[state.value!.borders.length - 2]
                  .toExtendRect(state.value!.precision, direction,
                      onEnd: state.value!.extendBorderOnEnd()))
          : state.value!.borders.last.onDragStart(details, direction)
    ], currentBorderExtension: direction));
  }

  void onBorderDragUpdate(DragUpdateDetails details,
      [PlannerDirection? direction]) {
    if (type != AuthType.owner) return;
    state = AsyncData(state.value!.copyWith(borders: [
      ...List.from(state.value!.borders)..removeLast(),
      state.value!.borders.last.onDragUpdate(
          details, state.value!.precision, state.value!.currentBorderExtension)
    ]));
  }

  void onBorderDragEnd(DragEndDetails details, PlannerDirection direction) {
    if (type != AuthType.owner) return;
    final canUpdate = state.value!.canUpdateTable(
        (state.value!.borders.length - 1).toString(),
        isTable: false);
    final isFirst = state.value!.borders.length == 1;
    state = AsyncData(state.value!.copyWith(
        borders: [
          ...List.from(state.value!.borders)..removeLast(),
          if (canUpdate)
            state.value!.borders.last
                .onDragEnd(details, state.value!.precision),
          if (!canUpdate && isFirst) state.value!.borders.last.resetDrag()
        ],
        isChanged: canUpdate && state.value!.isBorderFinished()
            ? true
            : state.value!.isChanged,
        currentAction: canUpdate && state.value!.isBorderFinished()
            ? BoardAction.none
            : (!canUpdate && isFirst
                ? BoardAction.chooseExtendBorder
                : BoardAction.chooseBorderType),
        lastBorderExtension: canUpdate
            ? state.value!.currentBorderExtension
            : state.value!.lastBorderExtension));
  }

  void updatePrecision(double value) {
    state = AsyncData(state.value!.copyWith(
        isChanged: true,
        precision: value,
        currentAction: state.value!.precision < 15
            ? BoardAction.initializing
            : state.value!.currentAction));
  }

  void addTable() {
    if (type != AuthType.owner) return;
    state = AsyncData(state.value!.copyWith(tables: [
      ...state.value!.tables,
      PlannerTable(
          id: "new",
          left: -4 * state.value!.precision,
          top: -2 * state.value!.precision,
          width: 4 * state.value!.precision,
          height: 2 * state.value!.precision)
    ], currentAction: BoardAction.addTable));
  }

  void stopAddTable() {
    if (type != AuthType.owner) return;
    state = AsyncData(state.value!.copyWith(
        tables: state.value!.tables.where((x) => x.id != "new").toList(),
        currentAction: BoardAction.none));
  }

  void updateAddTable(PointerHoverEvent event) {
    if (type != AuthType.owner) return;
    state = AsyncData(state.value!.copyWith(tables: [
      for (final table in state.value!.tables)
        if (table.id == "new") table.updateAddTable(event) else table
    ]));
  }

  void placeNewTable() {
    if (type != AuthType.owner) return;
    if (!state.value!.canUpdateTable("new", isTable: true)) return;
    state = AsyncData(state.value!.copyWith(
        isChanged: true,
        tables: [
          for (final table in state.value!.tables)
            if (table.id == "new")
              table.placeNewTable(
                  state.value!.precision, state.value!.tables.length.toString())
            else
              table
        ],
        currentAction: BoardAction.none));
  }

  void placeBorder() {
    if (type != AuthType.owner) return;
    state = AsyncData(state.value!.copyWith(borders: [
      PlannerBorder(
          type: PlannerBorderType.wall,
          left: -state.value!.precision,
          top: -state.value!.precision,
          length: state.value!.precision,
          isHorizontal: true)
    ], currentAction: BoardAction.placeBorder));
  }

  void updatePlaceBorder(PointerHoverEvent event) {
    if (type != AuthType.owner) return;
    state = AsyncData(state.value!.copyWith(borders: [
      ...List.from(state.value!.borders)..removeLast(),
      state.value!.borders.last.updateAddBorder(event, state.value!.precision)
    ]));
  }

  void placeNewBorder() {
    if (type != AuthType.owner) return;
    if (!state.value!.canUpdateTable(
        (state.value!.borders.length - 1).toString(),
        isTable: false)) return;
    state = AsyncData(state.value!.copyWith(borders: [
      ...List.from(state.value!.borders)..removeLast(),
      state.value!.borders.last
          .onDragEnd(DragEndDetails(), state.value!.precision)
    ], currentAction: BoardAction.chooseExtendBorder));
  }

  void stopAddBorder() {
    if (type != AuthType.owner) return;
    state = AsyncData(state.value!
        .copyWith(borders: List.empty(), currentAction: BoardAction.none));
  }

  void chooseNewBorderType(PlannerBorderType type) {
    if (this.type != AuthType.owner) return;
    state = AsyncData(state.value!
        .copyWith(currentAction: BoardAction.chooseExtendBorder, borders: [
      ...List.from(state.value!.borders),
      PlannerBorder(
          left: -state.value!.precision,
          top: -state.value!.precision,
          isHorizontal: true,
          length: state.value!.precision,
          type: type)
    ]));
  }

  void removeLastBorder() {
    if (type != AuthType.owner) return;

    state = AsyncData(state.value!.copyWith(
        borders: List.from(state.value!.borders)..removeLast(),
        currentAction: BoardAction.chooseBorderType));
  }

  void customSelectTable(PlannerTable table) {
    if(state.value!.onSelectTable != null) {
      state.value!.onSelectTable!(table);
    }
  }

  void updateCustomSelectTable(void Function(PlannerTable)? fn) {
    state = AsyncData(state.value!.copyWith(onSelectTable: fn));
  }

  void selectTable(PlannerTable table) {
     state = AsyncData(state.value!.copyWith(
        selectedTable: state.value!.tables.indexOf(table),
        currentAction: BoardAction.tableInfo));
  }

  void deselectTable() {
    state = AsyncData(state.value!
        .copyWith(selectedTable: null, currentAction: BoardAction.none));
  }

  void removeTable() {
    if (type != AuthType.owner) return;
    final modifyTable = state.value!.tables[state.value!.selectedTable!];
    state = AsyncData(state.value!.copyWith(
        isChanged: true,
        selectedTable: null,
        currentAction: BoardAction.none,
        tables: [
          for (final table in state.value!.tables)
            if (table != modifyTable) table
        ]));
  }

  void modifyChairs(PlannerDirection direction, bool subtract) {
    if (type != AuthType.owner) return;
    if (subtract
        ? !state.value!.canSubtractChairs(direction)
        : !state.value!.canAddChairs(direction)) return;
    final modifyTable = state.value!.tables[state.value!.selectedTable!];
    state = AsyncData(state.value!.copyWith(isChanged: true, tables: [
      for (final table in state.value!.tables)
        if (table == modifyTable)
          table.modifyChairs(direction, state.value!.precision, subtract)
        else
          table
    ]));
  }

  void updateTableID(TextEditingController controller) {
    if (type != AuthType.owner) return;
    final modifyTable = state.value!.tables[state.value!.selectedTable!];
    if (modifyTable.id == controller.text) return;
    for (final table in state.value!.tables) {
      if (table != modifyTable && controller.text == table.id) {
        controller.text = modifyTable.id;
        fluttertoastDefault("Wybrany identyfikator jest już zajęty", true);
        return;
      }
    }
    fluttertoastDefault("Poprawnie zmodyfikowano identyfikator");
    state = AsyncData(state.value!.copyWith(isChanged: true, tables: [
      for (final table in state.value!.tables)
        if (table == modifyTable) table.copyWith(id: controller.text) else table
    ]));
  }

  Future<void> savePrecision() async {
    if (type != AuthType.owner) return;
    final token = ref.read(authProvider).value!;
    try {
      final response = await Dio().post(
          '${dotenv.env['OWNER_API_URL']!}save-precision',
          data: {"precision": state.value!.precision},
          options:
              Options(headers: {"Authorization": "Bearer ${token.jwtToken}"}));
      state = AsyncData(state.value!.copyWith(currentAction: BoardAction.none));
      fluttertoastDefault(response.data['message']);
      ref.invalidateSelf();
    } on DioException catch (e) {
      if (e.response != null) {
        Map responseBody = e.response!.data;
        fluttertoastDefault(responseBody['detail'], true);
      } else {
        fluttertoastDefault(
            "Coś poszło nie tak. Spróbuj ponownie później", true);
      }
    }
  }

  Future<void> saveChanges() async {
    if (type != AuthType.owner) return;
    final token = ref.read(authProvider).value!;
    try {
      final response = await Dio().post(
          '${dotenv.env['OWNER_API_URL']!}save-planner-info',
          data: state.value!.toJson(),
          options:
              Options(headers: {"Authorization": "Bearer ${token.jwtToken}"}));
      fluttertoastDefault(response.data['message']);
      state = AsyncData(state.value!.copyWith(isChanged: false));
    } on DioException catch (e) {
      if (e.response != null) {
        Map responseBody = e.response!.data;
        fluttertoastDefault(
            "Wykryto następujące błędy w konfiguracji restauracji:\n${responseBody['detail'].join("\n")}",
            true,
            10);
      } else {
        fluttertoastDefault(
            "Coś poszło nie tak. Spróbuj ponownie później", true);
      }
    }
  }

  Future<void> resetBorders() async {
    final token = ref.read(authProvider).value!;
    try {
      final response = await Dio().get(
          '${dotenv.env['${type.name.toUpperCase()}_API_URL']!}planner-info',
          options:
              Options(headers: {"Authorization": "Bearer ${token.jwtToken}"}));
      state = AsyncData(state.value!.copyWith(
          borders: PlannerTablesBoard.fromJson(response.data).borders, currentAction: BoardAction.none));
    } on DioException catch (e) {
      if (e.response != null) {
        Map responseBody = e.response!.data;
        fluttertoastDefault(responseBody['detail'], true);
      } else {
        fluttertoastDefault(
            "Coś poszło nie tak przy wczytywaniu dotychczasowych granic. Spróbuj ponownie później lub odśwież stronę",
            true);
      }
    }
  }

  void resetAllowedTables() {
    state = AsyncData(state.value!.copyWith(allowedTables: []));
  }

  Future<void> updateAllowedTables(DateTime date, int guestsAmount, bool reservationsEnabled) async {
    final token = ref.read(authProvider).value!;
    try {
      final response = await Dio().get(
          '${dotenv.env['USER_API_URL']!}available-tables-for-time',
          queryParameters: {
            "guests_amount": guestsAmount,
            "restaurant_id": restaurantID,
            "date": date.toIso8601String()
          },
          options:
              Options(headers: {"Authorization": "Bearer ${token.jwtToken}"}));
      final tables =
          (response.data as List<dynamic>).map((e) => e.toString()).toList();

      state = AsyncData(state.value!.copyWith(allowedTables: tables));
      if(reservationsEnabled) {
        fluttertoastDefault("Wybierz stolik (zielony) do zarezerwowania");
      }
    } on DioException catch (e) {
      print(e.response);
      if (e.response != null) {
        Map responseBody = e.response!.data;
        fluttertoastDefault(responseBody['detail'], true);
      } else {
        fluttertoastDefault(
            "Coś poszło nie tak przy wczytywaniu dostępnych stolików. Spróbuj ponownie później",
            true);
      }
    }
  }

  Future<void> resetChanges() async {
    ref.invalidateSelf();
    await future;
  }
}
