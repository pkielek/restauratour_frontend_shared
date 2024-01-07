// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'planner_tables_board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlannerTablesBoard _$PlannerTablesBoardFromJson(Map<String, dynamic> json) {
  return _PlannerTablesBoard.fromJson(json);
}

/// @nodoc
mixin _$PlannerTablesBoard {
  List<PlannerTable> get tables => throw _privateConstructorUsedError;
  List<PlannerBorder> get borders => throw _privateConstructorUsedError;
  double get precision => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  BoardAction? get currentAction => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int? get selectedTable => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  PlannerDirection? get lastBorderExtension =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  PlannerDirection? get currentBorderExtension =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  BoxConstraints get constraints => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get isChanged => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlannerTablesBoardCopyWith<PlannerTablesBoard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlannerTablesBoardCopyWith<$Res> {
  factory $PlannerTablesBoardCopyWith(
          PlannerTablesBoard value, $Res Function(PlannerTablesBoard) then) =
      _$PlannerTablesBoardCopyWithImpl<$Res, PlannerTablesBoard>;
  @useResult
  $Res call(
      {List<PlannerTable> tables,
      List<PlannerBorder> borders,
      double precision,
      @JsonKey(ignore: true) BoardAction? currentAction,
      @JsonKey(ignore: true) int? selectedTable,
      @JsonKey(ignore: true) PlannerDirection? lastBorderExtension,
      @JsonKey(ignore: true) PlannerDirection? currentBorderExtension,
      @JsonKey(ignore: true) BoxConstraints constraints,
      @JsonKey(ignore: true) bool isChanged});
}

/// @nodoc
class _$PlannerTablesBoardCopyWithImpl<$Res, $Val extends PlannerTablesBoard>
    implements $PlannerTablesBoardCopyWith<$Res> {
  _$PlannerTablesBoardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tables = null,
    Object? borders = null,
    Object? precision = null,
    Object? currentAction = freezed,
    Object? selectedTable = freezed,
    Object? lastBorderExtension = freezed,
    Object? currentBorderExtension = freezed,
    Object? constraints = null,
    Object? isChanged = null,
  }) {
    return _then(_value.copyWith(
      tables: null == tables
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<PlannerTable>,
      borders: null == borders
          ? _value.borders
          : borders // ignore: cast_nullable_to_non_nullable
              as List<PlannerBorder>,
      precision: null == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as double,
      currentAction: freezed == currentAction
          ? _value.currentAction
          : currentAction // ignore: cast_nullable_to_non_nullable
              as BoardAction?,
      selectedTable: freezed == selectedTable
          ? _value.selectedTable
          : selectedTable // ignore: cast_nullable_to_non_nullable
              as int?,
      lastBorderExtension: freezed == lastBorderExtension
          ? _value.lastBorderExtension
          : lastBorderExtension // ignore: cast_nullable_to_non_nullable
              as PlannerDirection?,
      currentBorderExtension: freezed == currentBorderExtension
          ? _value.currentBorderExtension
          : currentBorderExtension // ignore: cast_nullable_to_non_nullable
              as PlannerDirection?,
      constraints: null == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as BoxConstraints,
      isChanged: null == isChanged
          ? _value.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlannerTablesBoardImplCopyWith<$Res>
    implements $PlannerTablesBoardCopyWith<$Res> {
  factory _$$PlannerTablesBoardImplCopyWith(_$PlannerTablesBoardImpl value,
          $Res Function(_$PlannerTablesBoardImpl) then) =
      __$$PlannerTablesBoardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PlannerTable> tables,
      List<PlannerBorder> borders,
      double precision,
      @JsonKey(ignore: true) BoardAction? currentAction,
      @JsonKey(ignore: true) int? selectedTable,
      @JsonKey(ignore: true) PlannerDirection? lastBorderExtension,
      @JsonKey(ignore: true) PlannerDirection? currentBorderExtension,
      @JsonKey(ignore: true) BoxConstraints constraints,
      @JsonKey(ignore: true) bool isChanged});
}

/// @nodoc
class __$$PlannerTablesBoardImplCopyWithImpl<$Res>
    extends _$PlannerTablesBoardCopyWithImpl<$Res, _$PlannerTablesBoardImpl>
    implements _$$PlannerTablesBoardImplCopyWith<$Res> {
  __$$PlannerTablesBoardImplCopyWithImpl(_$PlannerTablesBoardImpl _value,
      $Res Function(_$PlannerTablesBoardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tables = null,
    Object? borders = null,
    Object? precision = null,
    Object? currentAction = freezed,
    Object? selectedTable = freezed,
    Object? lastBorderExtension = freezed,
    Object? currentBorderExtension = freezed,
    Object? constraints = null,
    Object? isChanged = null,
  }) {
    return _then(_$PlannerTablesBoardImpl(
      tables: null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<PlannerTable>,
      borders: null == borders
          ? _value._borders
          : borders // ignore: cast_nullable_to_non_nullable
              as List<PlannerBorder>,
      precision: null == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as double,
      currentAction: freezed == currentAction
          ? _value.currentAction
          : currentAction // ignore: cast_nullable_to_non_nullable
              as BoardAction?,
      selectedTable: freezed == selectedTable
          ? _value.selectedTable
          : selectedTable // ignore: cast_nullable_to_non_nullable
              as int?,
      lastBorderExtension: freezed == lastBorderExtension
          ? _value.lastBorderExtension
          : lastBorderExtension // ignore: cast_nullable_to_non_nullable
              as PlannerDirection?,
      currentBorderExtension: freezed == currentBorderExtension
          ? _value.currentBorderExtension
          : currentBorderExtension // ignore: cast_nullable_to_non_nullable
              as PlannerDirection?,
      constraints: null == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as BoxConstraints,
      isChanged: null == isChanged
          ? _value.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlannerTablesBoardImpl extends _PlannerTablesBoard {
  _$PlannerTablesBoardImpl(
      {required final List<PlannerTable> tables,
      required final List<PlannerBorder> borders,
      required this.precision,
      @JsonKey(ignore: true) this.currentAction = BoardAction.none,
      @JsonKey(ignore: true) this.selectedTable,
      @JsonKey(ignore: true) this.lastBorderExtension,
      @JsonKey(ignore: true) this.currentBorderExtension,
      @JsonKey(ignore: true) this.constraints = const BoxConstraints(),
      @JsonKey(ignore: true) this.isChanged = false})
      : _tables = tables,
        _borders = borders,
        super._();

  factory _$PlannerTablesBoardImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlannerTablesBoardImplFromJson(json);

  final List<PlannerTable> _tables;
  @override
  List<PlannerTable> get tables {
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tables);
  }

  final List<PlannerBorder> _borders;
  @override
  List<PlannerBorder> get borders {
    if (_borders is EqualUnmodifiableListView) return _borders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_borders);
  }

  @override
  final double precision;
  @override
  @JsonKey(ignore: true)
  final BoardAction? currentAction;
  @override
  @JsonKey(ignore: true)
  final int? selectedTable;
  @override
  @JsonKey(ignore: true)
  final PlannerDirection? lastBorderExtension;
  @override
  @JsonKey(ignore: true)
  final PlannerDirection? currentBorderExtension;
  @override
  @JsonKey(ignore: true)
  final BoxConstraints constraints;
  @override
  @JsonKey(ignore: true)
  final bool isChanged;

  @override
  String toString() {
    return 'PlannerTablesBoard(tables: $tables, borders: $borders, precision: $precision, currentAction: $currentAction, selectedTable: $selectedTable, lastBorderExtension: $lastBorderExtension, currentBorderExtension: $currentBorderExtension, constraints: $constraints, isChanged: $isChanged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlannerTablesBoardImpl &&
            const DeepCollectionEquality().equals(other._tables, _tables) &&
            const DeepCollectionEquality().equals(other._borders, _borders) &&
            (identical(other.precision, precision) ||
                other.precision == precision) &&
            (identical(other.currentAction, currentAction) ||
                other.currentAction == currentAction) &&
            (identical(other.selectedTable, selectedTable) ||
                other.selectedTable == selectedTable) &&
            (identical(other.lastBorderExtension, lastBorderExtension) ||
                other.lastBorderExtension == lastBorderExtension) &&
            (identical(other.currentBorderExtension, currentBorderExtension) ||
                other.currentBorderExtension == currentBorderExtension) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints) &&
            (identical(other.isChanged, isChanged) ||
                other.isChanged == isChanged));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tables),
      const DeepCollectionEquality().hash(_borders),
      precision,
      currentAction,
      selectedTable,
      lastBorderExtension,
      currentBorderExtension,
      constraints,
      isChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlannerTablesBoardImplCopyWith<_$PlannerTablesBoardImpl> get copyWith =>
      __$$PlannerTablesBoardImplCopyWithImpl<_$PlannerTablesBoardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlannerTablesBoardImplToJson(
      this,
    );
  }
}

abstract class _PlannerTablesBoard extends PlannerTablesBoard {
  factory _PlannerTablesBoard(
      {required final List<PlannerTable> tables,
      required final List<PlannerBorder> borders,
      required final double precision,
      @JsonKey(ignore: true) final BoardAction? currentAction,
      @JsonKey(ignore: true) final int? selectedTable,
      @JsonKey(ignore: true) final PlannerDirection? lastBorderExtension,
      @JsonKey(ignore: true) final PlannerDirection? currentBorderExtension,
      @JsonKey(ignore: true) final BoxConstraints constraints,
      @JsonKey(ignore: true) final bool isChanged}) = _$PlannerTablesBoardImpl;
  _PlannerTablesBoard._() : super._();

  factory _PlannerTablesBoard.fromJson(Map<String, dynamic> json) =
      _$PlannerTablesBoardImpl.fromJson;

  @override
  List<PlannerTable> get tables;
  @override
  List<PlannerBorder> get borders;
  @override
  double get precision;
  @override
  @JsonKey(ignore: true)
  BoardAction? get currentAction;
  @override
  @JsonKey(ignore: true)
  int? get selectedTable;
  @override
  @JsonKey(ignore: true)
  PlannerDirection? get lastBorderExtension;
  @override
  @JsonKey(ignore: true)
  PlannerDirection? get currentBorderExtension;
  @override
  @JsonKey(ignore: true)
  BoxConstraints get constraints;
  @override
  @JsonKey(ignore: true)
  bool get isChanged;
  @override
  @JsonKey(ignore: true)
  _$$PlannerTablesBoardImplCopyWith<_$PlannerTablesBoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
