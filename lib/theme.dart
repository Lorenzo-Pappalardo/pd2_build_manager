import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  accentColor: Colors.blue[900],
  backgroundColor: Color.fromRGBO(20, 30, 50, 1),
  scaffoldBackgroundColor: Color.fromRGBO(20, 30, 50, 1),
  canvasColor: Color.fromRGBO(20, 30, 50, 1),
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  textTheme: TextTheme(
    headline1: TextStyle(color: Colors.white),
    headline2: TextStyle(color: Colors.white),
    headline3: TextStyle(color: Colors.white),
    headline4: TextStyle(color: Colors.white),
    headline5: TextStyle(color: Colors.white),
    headline6: TextStyle(color: Colors.white),
    bodyText1: TextStyle(color: Colors.white),
    bodyText2: TextStyle(color: Colors.white),
    button: TextStyle(color: Colors.white),
    caption: TextStyle(color: Colors.white),
    overline: TextStyle(color: Colors.white),
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
  cardColor: Colors.blue[900],
);
