import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:planner/planner.dart';

class PlannerBoardPanel extends ConsumerWidget {
  const PlannerBoardPanel({super.key, required this.board});
  final PlannerTablesBoard board;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late Widget childWidget;
    if (board.currentAction == BoardAction.addTable) {
      childWidget = PlannerPanelAddTable(board: board);
    } else if(board.currentAction == BoardAction.placeBorder || board.currentAction == BoardAction.chooseExtendBorder)  {
      childWidget = PlannerPanelPlaceBorder(board: board, placed: board.borders[0].left>=0, notFirst: board.borders.length>1);
    } else if(board.currentAction == BoardAction.chooseBorderType) {
      childWidget = PlannerPanelChooseBorderType(board: board);
    } else if(board.currentAction == BoardAction.tableInfo) {
      childWidget = PlannerPanelTableInfo(board: board);
    } else {
      childWidget = PlannerPanelDefault(board: board);
    }
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
        decoration: const BoxDecoration(
            border: Border(left: BorderSide(width: 2, color: Colors.black))),
        width: 250,
        child: childWidget);
  }
}
