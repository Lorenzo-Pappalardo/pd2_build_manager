import 'package:flutter/material.dart';
import 'package:pd2buildmanager/Mastermind.dart';

class SkillTrees with ChangeNotifier {
  Widget instance = Mastermind();
  String buildName = "INSERT NAME HERE";

  void setInstance(StatelessWidget sw) {
    instance = sw;
    notifyListeners();
  }

  void changeBuildName(String newName) {
    buildName = newName;
    notifyListeners();
  }
}
