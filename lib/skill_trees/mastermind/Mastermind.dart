import 'package:flutter/material.dart';
import 'package:pd2buildmanager/MyChangeNotifier.dart';
import 'package:pd2buildmanager/skill_trees/SkillTree.dart';
import 'package:pd2buildmanager/skill_trees/mastermind/Controller.dart';
import 'package:pd2buildmanager/skill_trees/mastermind/Medic.dart';
import 'package:pd2buildmanager/skill_trees/mastermind/Sharpshooter.dart';

class Mastermind extends SkillTree {
  int subtree;
  MyChangeNotifier myChangeNotifier;

  Mastermind({@required this.myChangeNotifier, this.subtree = 0});

  @override
  Widget getSubtreeBody() {
    if (subtree == 0)
      return Medic(getSubtreesBNB: getSubtreesBNB());
    else if (subtree == 1) return Controller(getSubtreesBNB: getSubtreesBNB());
    return Sharpshooter(getSubtreesBNB: getSubtreesBNB());
  }

  @override
  Container getSubtreesBNB() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
            child: Text("Medic"),
            onPressed: () => myChangeNotifier.setInstance(
                Mastermind(myChangeNotifier: myChangeNotifier, subtree: 0)),
          ),
          FlatButton(
            child: Text("Controller"),
            onPressed: () =>
                myChangeNotifier.setInstance(
                    Mastermind(myChangeNotifier: myChangeNotifier, subtree: 1)),
          ),
          FlatButton(
            child: Text("Sharpshooter"),
            onPressed: () =>
                myChangeNotifier.setInstance(
                    Mastermind(myChangeNotifier: myChangeNotifier, subtree: 2)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: getSubtreeBody());
  }
}
