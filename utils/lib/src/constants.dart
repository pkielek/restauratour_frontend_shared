import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

const primaryColor = Color(0xffa30015);
const primarySwatch = MaterialColor(0xffa30015, <int, Color>{
  900: primaryColor,
  800: Color(0xFFB21221),
  700: Color(0xFFBF1B28),
  600: Color(0xFFD0252D),
  500: Color(0xFFDF2F2E),
  400: Color(0xFFDC4448),
  300: Color(0xFFD5686B),
  200: Color(0xFFE39194),
  100: Color(0xFFF8C8CE),
  50: Color(0xFFFCE9EC)
});
final themeData = ThemeData(
          primarySwatch: primarySwatch,
          colorScheme: ColorScheme.fromSeed(seedColor: primarySwatch),
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Montserrat',
          inputDecorationTheme: InputDecorationTheme(
              prefixIconColor: Colors.black,
              suffixIconColor: Colors.black,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.black))),
          scrollbarTheme: const ScrollbarThemeData(
              thumbColor: MaterialStatePropertyAll(Colors.grey),
              thickness: MaterialStatePropertyAll(5),
              thumbVisibility: MaterialStatePropertyAll(true)),
          dialogBackgroundColor: Colors.white,
          dialogTheme: const DialogTheme(surfaceTintColor: Colors.white, backgroundColor: Colors.white));

void fluttertoastDefault(String message,[bool error = false,int timeInSec = 3]) {
  final String color = error ? '#f44336' : '#4caf50';
  Fluttertoast.showToast(msg: message,gravity: ToastGravity.TOP, timeInSecForIosWeb: timeInSec,webBgColor: color);
}

final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

String getWeekdayName(int weekNumber) {
  switch(weekNumber) {
    case 0:
      return 'Poniedziałek';
    case 1:
      return 'Wtorek';
    case 2:
      return 'Środa';
    case 3:
      return 'Czwartek';
    case 4:
      return 'Piątek';
    case 5:
      return 'Sobota';
    case 6:
      return 'Niedziela';
    default:
      return '';
  }
}

extension SecondsSinceEpoch on DateTime {
  int get secondsSinceEpoch => millisecondsSinceEpoch ~/ 1000;
}