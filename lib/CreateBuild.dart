import 'package:flutter/material.dart';
import 'package:pd2buildmanager/AppDrawer.dart';
import 'package:pd2buildmanager/BuildAppBar.dart';
import 'package:pd2buildmanager/MyChangeNotifier.dart';
import 'package:provider/provider.dart';

class CreateBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyChangeNotifier myChangeNotifier =
        Provider.of<MyChangeNotifier>(context);

    return Scaffold(
      appBar: BuildAppBar(),
      drawer: AppDrawer(),
      body: myChangeNotifier.getInstance(),
    );
  }
}
