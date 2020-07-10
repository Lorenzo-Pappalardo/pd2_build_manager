import 'package:flutter/material.dart';

class SkillCards extends StatelessWidget {
  final String logoName;
  final String name;
  int level;

  static const int UNSELECTED = 0;
  static const int BASIC = 1;
  static const int ACED = 2;

  SkillCards({this.logoName, this.name}) {
    level = 0;
  }

  void levelUp() {
    if (level == ACED)
      level = UNSELECTED;
    else
      level++;
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        levelUp();
        Scaffold.of(context).showSnackBar(
          new SnackBar(content: Text(level.toString())),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            children: <Widget>[
              Image.asset(logoName),
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}
