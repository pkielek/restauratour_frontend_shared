import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:utils/utils.dart';
import 'package:auth/auth.dart';
import 'package:planner/planner.dart';


class PlannerPanelPlaceBorder extends ConsumerWidget {
  const PlannerPanelPlaceBorder(
      {super.key, required this.board, required this.placed, required this.notFirst});
  final PlannerTablesBoard board;
  final bool placed;
  final bool notFirst;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(children: [
          const Text("Witaj w RestauraTOUR",
              style: headerStyle, textAlign: TextAlign.center),
          Text(
              placed ? "Poszerz ${notFirst ? "kolejną" : "pierwszą"} ścianę granicy pociągając za odpowiednią stronę" : "Ustaw początek granicy",
              style: const TextStyle(color: Colors.black, fontSize: 16),
              textAlign: TextAlign.center)
        ]),
        Column(
          children: [
            if(notFirst)
            DefaultButton(
                text: "Usuń ostatnią granicę",
                callback:
                    ref.read(PlannerInfoProvider(AuthType.owner).notifier).removeLastBorder),
            DefaultButton(
                  text: "Pozostaw granice puste",
                  callback: ref.read(PlannerInfoProvider(AuthType.owner).notifier).stopAddBorder,
                ),
            DefaultButton(
              text:"Pozostaw poprzednie",
              callback: ref.read(PlannerInfoProvider(AuthType.owner).notifier).resetBorders,
            )
          ],
        ),
        const SizedBox(height:10)
      ],
    );
  }
}
