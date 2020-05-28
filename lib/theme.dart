import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  accentColor: Colors.blueAccent,
  backgroundColor: Color.fromRGBO(20, 30, 50, 1),
  appBarTheme: AppBarTheme(
    color: Colors.blueAccent,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  buttonColor: Colors.blueAccent,
  popupMenuTheme: PopupMenuThemeData(
      color: Colors.blueAccent, textStyle: TextStyle(color: Colors.white)),
);
