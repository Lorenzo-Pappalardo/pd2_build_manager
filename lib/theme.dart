import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  accentColor: Colors.blue[900],
  backgroundColor: Color.fromRGBO(20, 30, 50, 1),
  scaffoldBackgroundColor: Color.fromRGBO(20, 30, 50, 1),
  canvasColor: Color.fromRGBO(20, 30, 50, 1),
  textTheme: TextTheme(
    button: TextStyle(color: Colors.white),
  ),
  appBarTheme: AppBarTheme(
    color: Colors.blue[900],
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      button: TextStyle(color: Colors.white),
    ),
  ),
  dialogTheme: DialogTheme(
    backgroundColor: Colors.blue[900],
    titleTextStyle: TextStyle(color: Colors.white),
  ),
);
