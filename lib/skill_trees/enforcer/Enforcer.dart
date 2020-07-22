import 'package:flutter/material.dart';
import 'package:pd2buildmanager/MyChangeNotifier.dart';
import 'package:pd2buildmanager/skill_trees/SkillTree.dart';
import 'package:pd2buildmanager/skill_trees/enforcer/AmmoSpecialist.dart';
import 'package:pd2buildmanager/skill_trees/enforcer/Shotgunner.dart';
import 'package:pd2buildmanager/skill_trees/enforcer/Tank.dart';

class Enforcer extends SkillTree {
  int subtree;
  MyChangeNotifier myChangeNotifier;

  Enforcer({@required this.myChangeNotifier, this.subtree = 0});

  @override
  Widget getSubtreeBody() {
    if (subtree == 0)
      return Shotgunner(getSubtreesBNB: getSubtreesBNB());
    else if (subtree == 1) return Tank(getSubtreesBNB: getSubtreesBNB());
    return AmmoSpecialist(getSubtreesBNB: getSubtreesBNB());
  }

  @override
  Container getSubtreesBNB() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
            child: Text("Shotgunner"),
            onPressed: () => myChangeNotifier.setInstance(
                Enforcer(myChangeNotifier: myChangeNotifier, subtree: 0)),
          ),
          FlatButton(
            child: Text("Tank"),
            onPressed: () => myChangeNotifier.setInstance(Enforcer(
              myChangeNotifier: myChangeNotifier,
              subtree: 1,
            )),
          ),
          FlatButton(
            child: Text("Ammo Specialist"),
            onPressed: () => myChangeNotifier.setInstance(
                Enforcer(myChangeNotifier: myChangeNotifier, subtree: 2)),
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
