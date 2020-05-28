import 'package:flutter/material.dart';

import 'build.dart';
import 'theme.dart';
import 'welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      title: "PD2 Build Manager",
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/Build': (context) => Build(),
        '/SavedBuilds': (context) => null,
      },
    );
  }
}
