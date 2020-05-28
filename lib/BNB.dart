import 'package:flutter/material.dart';
import 'package:pd2buildmanager/Variables.dart';

class BNB extends StatefulWidget {
  _BNBState createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      currentIndex: Variables.bnbIndex,
      onTap: (int i) {
        setState(() {
          Variables.bnbIndex = i;
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          title: Text("Mastermind"),
          backgroundColor: Theme.of(context).backgroundColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          title: Text("Enforcer"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          title: Text("Technician"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          title: Text("Ghost"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          title: Text("Fugitive"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          title: Text("Perk Decks"),
        ),
      ],
    );
  }
}
