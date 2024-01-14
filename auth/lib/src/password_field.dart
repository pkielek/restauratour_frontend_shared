import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class PasswordField extends ConsumerWidget {
  const PasswordField({super.key, required this.onSubmit, required this.type});

  final AuthType type;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
        validator: (value) => value!.length < 4 && value.isNotEmpty
            ? "Hasło jest za krótkie"
            : null,
        onChanged: ref.read(LoginProvider(type).notifier).updatePassword,
        onFieldSubmitted: (_) => onSubmit(),
        obscureText: !(ref.watch(LoginProvider(type)).value?.showPassword ?? true),
        decoration: InputDecoration(
          icon: const Icon(Icons.key, color: Colors.black),
          labelText: 'Hasło',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          suffixIcon: IconButton(
            icon: ref.watch(LoginProvider(type)).value?.passwordVisibleIcon ?? const Icon(Icons.visibility),
            onPressed: ref.read(LoginProvider(type).notifier).toggleShowPassword,
            color: ref.watch(LoginProvider(type)).value?.passwordVisibleColor ?? Colors.black,
            splashRadius: 1.0,
          ),
          
        ));
  }
}
