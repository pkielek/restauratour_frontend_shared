import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:planner/planner.dart';

import 'package:utils/utils.dart';
import 'package:auth/auth.dart';

class PlannerPanelAddTable extends ConsumerWidget {
  const PlannerPanelAddTable(
      {super.key, required this.board});
  final PlannerTablesBoard board;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(children: [
          Text("Witaj w RestauraTOUR",
              style: headerStyle, textAlign: TextAlign.center),
          Text(
              "Ustaw nowy stolik w wybranym miejscu",
              style: TextStyle(color: Colors.black, fontSize: 16),
              textAlign: TextAlign.center)
        ]),
        DefaultButton(
              text: "Anuluj dodawanie stolika",
              callback: ref.read(PlannerInfoProvider(AuthType.owner).notifier).stopAddTable,
            ),
        const SizedBox(height:10)
      ],
    );
  }
}
