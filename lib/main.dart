import 'package:flutter/material.dart';
import 'package:pd2buildmanager/CreateBuild.dart';
import 'package:pd2buildmanager/SkillTrees.dart';
import 'package:pd2buildmanager/WelcomePage.dart';
import 'package:pd2buildmanager/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SkillTrees>.value(
      value: SkillTrees(),
      child: MaterialApp(
        theme: appTheme,
        title: "PD2 Build Manager",
        initialRoute: '/',
        routes: {
          '/': (context) => WelcomePage(),
          '/CreateBuild': (context) => CreateBuild(),
          '/SavedBuilds': (context) => null,
        },
      ),
    );
  }
}
