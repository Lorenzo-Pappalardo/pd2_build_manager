import 'package:flutter/material.dart';
import 'package:pd2buildmanager/BNB.dart';
import 'package:pd2buildmanager/BuildAppBar.dart';

class Build extends StatefulWidget {
  _BuildState createState() => _BuildState();
}

class _BuildState extends State<Build> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: BuildAppBar(),
      bottomNavigationBar: BNB(),
    );
  }
}
