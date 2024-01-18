import 'package:auth/auth.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

part 'register.g.dart';
part 'register.freezed.dart';

@freezed
class RegisterInfo with _$RegisterInfo {
  factory RegisterInfo(
      {required String password,
      required String confirmPassword,
      @Default(null) String? email,
      @Default(null) String? name,
      @Default(null) String? accessKey}) = _RegisterInfo;

  factory RegisterInfo.fromJson(Map<String, dynamic> json) =>
      _$RegisterInfoFromJson(json);
}

@riverpod
class Register extends _$Register {
  @override
  RegisterInfo build(AuthType type) {
    return RegisterInfo(
        password: "",
        confirmPassword: "",
        email: type == AuthType.owner ? null : "",
        name: type == AuthType.user ? "" : null,
        accessKey: type == AuthType.worker ? "" : null);
  }

  void updatePassword(String? input) {
    if (input == null) return;
    state = state.copyWith(password: input);
  }

  void updateConfirmPassword(String? input) {
    if (input == null) return;
    state = state.copyWith(confirmPassword: input);
  }

  void updateKey(String? input) {
    if (input == null) return;
    state = state.copyWith(accessKey: input);
  }

  void updateName(String? input) {
    if (input == null) return;
    state = state.copyWith(name: input);
  }

  void updateEmail(String? input) {
    if (input == null) return;
    state = state.copyWith(email: input);
  }

  void cancelPasswordUpdate() {
    ref.invalidateSelf();
  }

  Future<bool> register() async {
    if (validatePassword(state.password).isNotEmpty ||
        state.password != state.confirmPassword) {
      fluttertoastDefault(
          "Hasło nie spełnia wymagań - odnieś się do błędów pod polami", true);
      return false;
    }
    if (type != AuthType.owner && !state.email!.isValidEmail()) {
      fluttertoastDefault("Ustaw poprawny adres e-mail", true);
      return false;
    }
    if (type == AuthType.user && state.name!.length < 3) {
      fluttertoastDefault("Ustaw poprawne imię", true);
      return false;
    }
    try {
      final response = await Dio().post(
          '${dotenv.env['${type.name.toUpperCase()}_API_URL']!}${type == AuthType.user ? 'register' : 'update-password'}',
          data: type == AuthType.owner
              ? {
                  "new_password": state.password,
                  "confirm_password": state.confirmPassword
                }
              : state.toJson(),
          options: type != AuthType.owner
              ? null
              : Options(headers: {
                  "Authorization":
                      "Bearer ${ref.read(authProvider).value!.jwtToken}"
                }));

      fluttertoastDefault(response.data['message']);
      return true;
    } on DioException catch (e) {
      if (e.response != null) {
        Map responseBody = e.response!.data;
        fluttertoastDefault(responseBody['detail'], true);
      } else {
        fluttertoastDefault(
            "Coś poszło nie tak. Spróbuj jeszcze raz ponownie", true);
      }
      return false;
    }
  }
}
