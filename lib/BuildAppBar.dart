import 'package:flutter/material.dart';
import 'package:pd2buildmanager/MyChangeNotifier.dart';
import 'package:provider/provider.dart';

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final MyChangeNotifier myChangeNotifier =
        Provider.of<MyChangeNotifier>(context);

    return AppBar(
      centerTitle: true,
      title: FlatButton(
        child: Text(myChangeNotifier.buildName),
        onPressed: () => showDialog(
          context: context,
          barrierDismissible: true,
          child: AlertDialog(
            title: Text("Enter name below"),
            content: TextField(
              controller: _nameController,
              maxLength: 50,
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Submit"),
                onPressed: () {
                  myChangeNotifier.changeBuildName(_nameController.text);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
