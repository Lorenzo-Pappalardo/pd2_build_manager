import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset('assets/logo.png'),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                child: Text("Create a new build"),
                onPressed: () => Navigator.pushNamed(context, '/CreateBuild'),
              ),
              FlatButton(
                child: Text("View saved builds"),
                onPressed: () => Navigator.pushNamed(context, '/SavedBuilds'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
