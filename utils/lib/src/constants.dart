import 'dart:typed_data';
import 'dart:ui';

import 'package:crop_image/crop_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
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
    backgroundColor: Colors.white,
    dialogBackgroundColor: Colors.white,
    dialogTheme: const DialogTheme(
        surfaceTintColor: Colors.white, backgroundColor: Colors.white));

void fluttertoastDefault(String message,
    [bool error = false, int timeInSec = 3]) {
  final String color = error ? '#f44336' : '#4caf50';
  Fluttertoast.showToast(
      toastLength: Toast.LENGTH_LONG,
      msg: message,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: timeInSec,
      webBgColor: color,
      backgroundColor: error? primaryColor : Colors.green);
}

final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

List<String> validatePassword(String password) {
  final List<String> errors = List.empty(growable: true);
  if (!RegExp(r'[!@#$%^&*(),.]').hasMatch(password)) {
    errors.add("Hasło musi zawierać znak specjalny, tj. jeden z !@#\$%^&*(),.");
  }
  if (!RegExp(r'[0-9]').hasMatch(password)) {
    errors.add("Hasło musi zawierać liczbę");
  }
  if (!RegExp(r'[a-z]').hasMatch(password)) {
    errors.add("Hasło musi zawierać małą literę");
  }
  if (!RegExp(r'[A-Z]').hasMatch(password)) {
    errors.add("Hasło musi zawierać dużą literę");
  }
  if (password.length < 8)
    errors.add("Hasło musi zawierać conajmniej 8 znaków");
  return errors;
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

void uploadRestaurantFile(
    BuildContext context, Function(Uint8List) onAfterUpload, [double aspectRatio = 1.9]) async {
  final picker = ImagePicker();
  final image = await picker.pickImage(source: ImageSource.gallery,maxWidth: 380*aspectRatio, maxHeight: 380);
  if (image != null) {
    final controller = CropController(aspectRatio: aspectRatio);
    final imageBytes = await image.readAsBytes();
    if (!context.mounted) return;
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.8,
                child: CropImage(
                  gridInnerColor: Colors.grey,
                  gridCornerColor: Colors.black,
                  gridCornerSize: 25,
                  controller: controller,
                  image: Image.memory(imageBytes),
                ),
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.save),
                    color: Colors.indigo,
                    tooltip: "Zapisz obraz",
                    onPressed: () async {
                      var bitmap = await controller.croppedBitmap();
                      final byteData = await bitmap.toByteData(format:ImageByteFormat.png);
                      if (byteData == null) {
                        fluttertoastDefault(
                            "Coś poszło nie tak z zapisaniem zdjęcia. Spróbuj ponownie!",
                            true);
                      } else {
                        final bytes = byteData.buffer;
                        final bool uploaded = await onAfterUpload(
                            bytes.asUint8List(byteData.offsetInBytes,
                                byteData.lengthInBytes));
                        if (uploaded) Navigator.pop(context, 'Zapisz obraz');
                      }
                    }),
                IconButton(
                    icon: const Icon(Icons.cancel),
                    color: primaryColor,
                    tooltip: "Anuluj",
                    onPressed: () {
                      Navigator.pop(context, 'Anuluj');
                    })
              ],
            ));
  }
}

String getWeekdayName(int weekNumber) {
  switch (weekNumber) {
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

String getWeekdayNameShort(int weekNumber) {
  switch(weekNumber) {
    case 0:
      return 'Pn';
    case 1:
      return 'Wt';
    case 2:
      return 'Śr';
    case 3:
      return 'Cz';
    case 4:
      return 'Pt';
    case 5:
      return 'Sb';
    case 6:
      return 'Nd';
    default:
      return '';
  }
}

extension SecondsSinceEpoch on DateTime {
  int get secondsSinceEpoch => millisecondsSinceEpoch ~/ 1000;
}
