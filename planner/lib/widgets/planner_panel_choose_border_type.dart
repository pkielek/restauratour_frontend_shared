import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:planner/planner.dart';
import 'package:utils/utils.dart';
import 'package:auth/auth.dart';

class PlannerPanelChooseBorderType extends ConsumerWidget {
  const PlannerPanelChooseBorderType({super.key, required this.board});
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
              "Wybierz kolejny typ granicy do ustawienia. By zakończyć ustawianie granic, zamknij obwód granicy restauracji",
              style: TextStyle(color: Colors.black, fontSize: 16),
              textAlign: TextAlign.center)
        ]),
        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          for (final type in PlannerBorderType.values)
            DefaultButton(
                callback: () => ref.read(PlannerInfoProvider(AuthType.owner).notifier)
                    .chooseNewBorderType(type),
                text: type.label,
                bgColor: type.color)
        ]),
        Column(
          children: [
            if(board.borders.length>1)
              DefaultButton(
                  text: "Usuń ostatnią granicę",
                  callback:
                      ref.read(PlannerInfoProvider(AuthType.owner).notifier).removeLastBorder),
            DefaultButton(
              text: "Pozostaw granice puste",
              callback: ref.read(PlannerInfoProvider(AuthType.owner).notifier).stopAddBorder,
            ),
            DefaultButton(
              text: "Pozostaw poprzednie",
              callback: ref.read(PlannerInfoProvider(AuthType.owner).notifier).resetBorders,
            )
          ],
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
