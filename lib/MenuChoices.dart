import 'package:flutter/material.dart';

class Choice {
  final String title;
  final IconData icon;

  const Choice({this.title, this.icon});
}

const List<Choice> choices = const <Choice>[
  const Choice(title: "Reset this tree", icon: Icons.restore),
  const Choice(title: "Reset all trees", icon: Icons.delete_forever),
  const Choice(title: "Save", icon: Icons.save),
];
