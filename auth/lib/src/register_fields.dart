import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:routemaster/routemaster.dart';
import 'package:utils/utils.dart';

class RegisterFields extends ConsumerWidget {
  final RoundedLoadingButtonController _submitController =
      RoundedLoadingButtonController();

  RegisterFields({super.key, required this.type});
  final AuthType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    RegisterInfo info = ref.watch(RegisterProvider(type));
    final notifier = ref.watch(RegisterProvider(type).notifier);
    if (type == AuthType.owner) {
      throw ArgumentError("Owner cannot register");
    }
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      EmailField(onChanged: notifier.updateEmail, initialValue: info.email),
      if (type == AuthType.user) const SizedBox(height: 16),
      if (type == AuthType.user)
        TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (input) {
              if (input == "" || input == null) return null;
              return input.length<3 ? "Imię musi mieć minimum 3 znaki" : null;
            },
            initialValue: info.name,
            onChanged: notifier.updateName,
            decoration:
                defaultDecoration(icon: Icons.person, labelText: "Imię")),
      const SizedBox(height: 16),
      TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.visiblePassword,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: true,
          initialValue: info.password,
          validator: (input) {
            if (input == "" || input == null) return null;
            return validatePassword(input).join('\n');
          },
          onChanged: notifier.updatePassword,
          decoration:
              defaultDecoration(icon: Icons.password, labelText: "Nowe hasło")),
      const SizedBox(height: 16),
      TextFormField(
          textInputAction: TextInputAction.next,
          obscureText: true,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          initialValue: info.confirmPassword,
          validator: (input) {
            if (input == "" || input == null) return null;
            return input == info.password ? null : "Hasła muszą być identyczne";
          },
          onChanged: notifier.updateConfirmPassword,
          decoration: defaultDecoration(
              icon: Icons.password, labelText: "Potwierdź hasło")),
      if (type == AuthType.worker) const SizedBox(height: 16),
      if (type == AuthType.worker)
        TextFormField(
            textInputAction: TextInputAction.send,
            keyboardType: TextInputType.visiblePassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            initialValue: info.accessKey,
            onChanged: notifier.updateKey,
            decoration: InputDecoration(
              hintText:
                  "Klucz aktywacyjny znajdziesz na mailu na który założono Ci konto",
              icon: const Icon(
                Icons.key,
                color: Colors.black,
              ),
              labelText: "Klucz aktywacyjny",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
            )),
      const SizedBox(height: 24),
      RoundedLoadingButton(
        color: primaryColor,
        successIcon: Icons.done,
        failedIcon: Icons.close,
        resetAfterDuration: true,
        resetDuration: const Duration(seconds: 2),
        width: 2000,
        controller: _submitController,
        onPressed: () async {
          final result = await notifier.register();
          if(result) {
            Routemaster.of(context).pop();
          }
        },
        child: Text(type == AuthType.user ? 'Zarejestruj się' : 'Zmień hasło',
            style: TextStyle(color: Colors.white)),
      ),
    ]);
  }
}
