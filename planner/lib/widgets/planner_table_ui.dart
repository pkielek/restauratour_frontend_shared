import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:planner/planner.dart';
import 'package:auth/auth.dart';
import 'package:simple_animations/animation_builder/mirror_animation_builder.dart';

class PlannerTableUI extends ConsumerWidget {
  const PlannerTableUI(
      {super.key,
      required this.data,
      required this.board,
      required this.notifier,
      this.workerColor});
  final PlannerTablesBoard board;
  final PlannerInfo notifier;
  final Color? workerColor;
  final PlannerTable data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final BoxDecoration decoration = BoxDecoration(
        color: workerColor ??
            (notifier.type == AuthType.worker
                ? Colors.green
                : notifier.type == AuthType.user &&
                        board.allowedTables.isNotEmpty
                    ? (board.allowedTables.contains(data.id)
                        ? Colors.green
                        : Colors.red)
                    : board.isSelectedTable(data)
                        ? Colors.green
                        : Colors.red),
        border: Border.all(color: Colors.black, width: 2));
    final Container chair = Container(
        width: board.precision,
        height: board.precision,
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(50)));

    final uneditableTableWidget = notifier.type != AuthType.owner
        ? GestureDetector(
            onTap: () => notifier.type == AuthType.worker ? notifier.selectTable(data) : notifier.customSelectTable(data),
            child: decoration.color == Colors.transparent
                ? MirrorAnimationBuilder(
                    builder: (context, value, child) => Container(
                        decoration: decoration.copyWith(color: value)),
                    tween: ColorTween(
                        begin: Colors.red.shade800, end: Colors.red.shade200),
                    duration: const Duration(milliseconds: 500))
                : Container(decoration: decoration))
        : null;
    return Stack(
      fit: StackFit.expand,
      children: [
        if (notifier.type == AuthType.owner)
          Positioned.fromRect(
            rect: data.toNewRect(board.precision),
            child: MouseRegion(
              cursor: data.currentAction.cursor,
              child: Opacity(
                  opacity: !data.isDragged ||
                          board.canUpdateTable(data.id, isTable: true)
                      ? 1
                      : 0,
                  child: Container(
                    decoration: decoration,
                  )),
            ),
          ),
        if (data.seatsTop > 0)
          Positioned(
              left: data.left,
              top: data.top - board.precision,
              width: data.width,
              height: board.precision,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.filled(data.seatsTop, chair))),
        if (data.seatsBottom > 0)
          Positioned(
              left: data.left,
              top: data.top + data.height,
              width: data.width,
              height: board.precision,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.filled(data.seatsBottom, chair))),
        if (data.seatsLeft > 0)
          Positioned(
              left: data.left - board.precision,
              top: data.top,
              width: board.precision,
              height: data.height,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.filled(data.seatsLeft, chair))),
        if (data.seatsRight > 0)
          Positioned(
              left: data.left + data.width,
              top: data.top,
              width: board.precision,
              height: data.height,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.filled(data.seatsRight, chair))),
        Positioned.fromRect(
            rect: data.toRect(),
            child: uneditableTableWidget ??
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    MouseRegion(
                      cursor: data.currentAction.cursor,
                      child: GestureDetector(
                        onTap: board.currentAction == BoardAction.none
                            ? () => notifier.selectTable(data)
                            : null,
                        onPanStart: board.selectedTable != null
                            ? null
                            : (details) =>
                                notifier.onTableDragStart(data.id, details),
                        onPanUpdate: board.selectedTable != null
                            ? null
                            : (details) =>
                                notifier.onTableDragUpdate(data.id, details),
                        onPanEnd: board.selectedTable != null
                            ? null
                            : (details) =>
                                notifier.onTableDragEnd(data.id, details),
                        child: Opacity(
                          opacity: 0.33,
                          child: Container(
                            decoration: decoration,
                          ),
                        ),
                      ),
                    ),
                    if (board.selectedTable == null)
                      for (final direction in PlannerDirection.values)
                        PlannerTableResizeHandle(
                            rect: data.toRect(),
                            id: data.id,
                            direction: direction,
                            precision: board.precision)
                  ],
                )),
      ],
    );
  }
}
