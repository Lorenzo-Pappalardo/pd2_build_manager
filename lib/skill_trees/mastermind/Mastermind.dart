import 'package:flutter/material.dart';
import 'package:pd2buildmanager/MyChangeNotifier.dart';
import 'package:pd2buildmanager/skill_trees/SkillTree.dart';
import 'package:pd2buildmanager/skill_trees/mastermind/Controller.dart';
import 'package:pd2buildmanager/skill_trees/mastermind/Medic.dart';
import 'package:pd2buildmanager/skill_trees/mastermind/Sharpshooter.dart';

class Mastermind extends SkillTree {
  int subtree;
  MyChangeNotifier myChangeNotifier;

  Mastermind({@required this.subtree, @required this.myChangeNotifier});

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
                Mastermind(subtree: 0, myChangeNotifier: myChangeNotifier)),
          ),
          FlatButton(
            child: Text("Controller"),
            onPressed: () => myChangeNotifier.setInstance(
                Mastermind(subtree: 1, myChangeNotifier: myChangeNotifier)),
          ),
          FlatButton(
            child: Text("Sharpshooter"),
            onPressed: () => myChangeNotifier.setInstance(
                Mastermind(subtree: 2, myChangeNotifier: myChangeNotifier)),
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
