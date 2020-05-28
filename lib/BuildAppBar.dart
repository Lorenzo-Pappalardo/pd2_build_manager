import 'package:flutter/material.dart';
import 'package:pd2buildmanager/MenuChoices.dart';
import 'package:pd2buildmanager/Variables.dart';

class BuildAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  _BuildAppBarState createState() => _BuildAppBarState();
}

class _BuildAppBarState extends State<BuildAppBar> {
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: FlatButton(
        child: Text(
          Variables.buildName,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Theme.of(context).backgroundColor,
              title: Text(
                "Enter name below",
                style: TextStyle(color: Theme.of(context).accentColor),
              ),
              content: SingleChildScrollView(
                child: TextField(
                  controller: _nameController,
                  maxLength: 50,
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Theme.of(context).accentColor),
                  ),
                  onPressed: () {
                    setState(() {
                      Variables.buildName = _nameController.text;
                    });
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        ),
      ),
      actions: <Widget>[
        PopupMenuButton(
          icon: Icon(Icons.menu),
          itemBuilder: (BuildContext context) {
            return choices.map((Choice choice) {
              return PopupMenuItem<Choice>(
                value: choice,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(choice.title),
                      Icon(choice.icon),
                    ],
                  ),
                ),
              );
            }).toList();
          },
        )
      ],
    );
  }
}
