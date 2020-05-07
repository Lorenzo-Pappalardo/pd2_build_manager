import 'package:flutter/material.dart';

import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      title: "PD2 Build Manager",
      home: Scaffold(
      ),
      //routes:, TO-DO
    );
  }
}
