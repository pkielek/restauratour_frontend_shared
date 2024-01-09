import 'package:flutter/material.dart';
import 'package:utils/src/constants.dart';

const boldBig = TextStyle(fontWeight: FontWeight.w700, fontSize: 32);
const footprintStyle = TextStyle(fontWeight: FontWeight.w100, fontSize: 12);
const headerStyle = TextStyle(fontWeight: FontWeight.w700, fontSize: 24);
const headerLightStyle = TextStyle(fontWeight: FontWeight.w400, fontSize: 24);
const listStyle = TextStyle(fontWeight: FontWeight.w700, fontSize:18);
const listStyleInactive = TextStyle(fontWeight: FontWeight.w700, fontSize:18, color: Colors.grey);
const listStyleSelected = TextStyle(fontWeight: FontWeight.w700, fontSize:18,color: primaryColor);
const listLightStyle = TextStyle(fontWeight: FontWeight.w400, fontSize:18);
const smallDetailStyle = TextStyle(fontWeight: FontWeight.w200, fontSize: 12, color: primaryColor);
const inactiveNavigationButtonText = TextStyle(fontWeight: FontWeight.w300, fontSize: 20, color: Colors.black);
const activeNavigationButtonText = TextStyle(fontWeight: FontWeight.w700, fontSize: 20);

const headerLeftDivider = Divider(color: Colors.black, thickness: 3, endIndent: 10);
const headerDivider = Divider(color: Colors.black, thickness: 3, indent: 10, endIndent: 10);

InputDecoration defaultDecoration({required IconData icon, required String labelText}) {
  return InputDecoration(
          icon: Icon(
            icon,
            color: Colors.black,
          ),
          labelText: labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        );
}

Color navigationColor(Set<MaterialState> states) {
  if(states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) {
    return primaryColor;
  } else {
    return Colors.black;
  }
}