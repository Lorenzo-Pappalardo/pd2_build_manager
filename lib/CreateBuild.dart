import 'package:flutter/material.dart';
import 'package:pd2buildmanager/AppDrawer.dart';
import 'package:pd2buildmanager/BuildAppBar.dart';
import 'package:pd2buildmanager/SkillTrees.dart';
import 'package:provider/provider.dart';

class CreateBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SkillTrees skillTrees = Provider.of<SkillTrees>(context);

    return Scaffold(
      appBar: BuildAppBar(),
      drawer: AppDrawer(),
      body: skillTrees.instance,
    );
  }
}
