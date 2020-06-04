import 'package:flutter/material.dart';
import 'package:pd2buildmanager/AppDrawer.dart';
import 'package:pd2buildmanager/BuildAppBar.dart';
import 'package:pd2buildmanager/Variables.dart';

/*class CreateBuild extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreateBuildState();
}

class _CreateBuildState extends State<CreateBuild> {*/
class CreateBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      drawer: AppDrawer(),
      body: Variables.skillTree,
    );
  }
}
