import 'package:flutter/material.dart';
import 'package:pd2buildmanager/Enforcer.dart';
import 'package:pd2buildmanager/Mastermind.dart';
import 'package:pd2buildmanager/Variables.dart';

//class AppDrawer extends StatelessWidget {
class AppDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
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
            onTap: null,
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            title: Text("Mastermind"),
            onTap: () {
              setState(() {
                Variables.skillTree = Mastermind();
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Enforcer"),
            onTap: () {
              setState(() {
                Variables.skillTree = Enforcer();
              });
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            trailing: Icon(
              Icons.restore,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text("Reset this tree"),
            onTap: null,
          ),
          ListTile(
            trailing: Icon(
              Icons.delete,
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text("Reset all trees"),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
