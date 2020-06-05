import 'package:flutter/material.dart';

class SkillCards extends StatelessWidget {
  IconData icon;
  String name;
  int level;

  final int UNSELECTED = 0;
  final int BASIC = 1;
  final int ACED = 2;

  SkillCards({this.icon, this.name, this.level});

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
        child: Column(
          children: <Widget>[
            Icon(icon),
            Text(name),
          ],
        ),
      ),
    );
  }
}
