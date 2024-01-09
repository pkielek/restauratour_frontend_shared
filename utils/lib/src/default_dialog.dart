import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:utils/utils.dart';

class DefaultDialog extends ConsumerWidget {
  const DefaultDialog(
      {super.key,
      required this.title,
      required this.text,
      required this.onConfirm,
      this.confirmText});
  final String title;
  final String text;
  final VoidCallback onConfirm;
  final String? confirmText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
        title: Text(title,
            style: const TextStyle(
                color: primaryColor, fontWeight: FontWeight.w700)),
        insetPadding: const EdgeInsets.all(100),
        content: Text(text),
        actions: <Widget>[
          TextButton(
              onPressed: onConfirm,
              child: Text(
                confirmText ?? 'Tak',
                style: const TextStyle(fontWeight: FontWeight.bold),
              )),
          TextButton(
              onPressed: () => Navigator.pop(context, 'Anuluj'),
              child: const Text('Anuluj'))
        ]);
  }
}
