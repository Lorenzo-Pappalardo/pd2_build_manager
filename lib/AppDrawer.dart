import 'package:flutter/material.dart';
import 'package:pd2buildmanager/MyChangeNotifier.dart';
import 'package:pd2buildmanager/skill_trees/enforcer/Enforcer.dart';
import 'package:pd2buildmanager/skill_trees/mastermind/Mastermind.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyChangeNotifier myChangeNotifier =
        Provider.of<MyChangeNotifier>(context);

    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Image.asset("assets/logo.png"),
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
          ),
          ListTile(
            trailing: Icon(
              Icons.save,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text("Save"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            title: Text("Mastermind"),
            onTap: () {
              myChangeNotifier.setInstance(Mastermind(
                myChangeNotifier: myChangeNotifier,
              ));
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Enforcer"),
            onTap: () {
              myChangeNotifier.setInstance(Enforcer(
                myChangeNotifier: myChangeNotifier,
              ));
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            trailing: Icon(
              Icons.restore,
              color: Theme
                  .of(context)
                  .iconTheme
                  .color,
            ),
            title: Text("Reset this tree"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.delete,
              color: Theme
                  .of(context)
                  .iconTheme
                  .color,
            ),
            title: Text("Reset all trees"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
