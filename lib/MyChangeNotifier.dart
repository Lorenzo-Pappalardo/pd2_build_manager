import 'package:flutter/material.dart';
import 'package:pd2buildmanager/skill_trees/SkillTree.dart';
import 'package:pd2buildmanager/skill_trees/mastermind/Mastermind.dart';

class MyChangeNotifier extends ChangeNotifier {
  String buildName;
  SkillTree instance;
  Container subTrees;

  MyChangeNotifier() {
    buildName = "INSERT NAME HERE";
    instance = Mastermind(
      subtree: 0,
      myChangeNotifier: this,
    );
    subTrees = instance.getSubtreesBNB();
  }

  void changeBuildName(String newName) {
    buildName = newName;
    notifyListeners();
  }

  void setInstance(Widget skillTree) {
    instance = skillTree;
    notifyListeners();
  }

  SkillTree getInstance() {
    return instance;
  }
}
