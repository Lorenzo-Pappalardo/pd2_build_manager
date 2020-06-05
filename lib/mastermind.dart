import 'package:flutter/material.dart';
import 'package:pd2buildmanager/SkillCards.dart';

class Mastermind extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          new SkillCards(
            icon: Icons.thumb_up,
            name: "Inspire",
            level: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new SkillCards(
                icon: Icons.add_circle,
                name: "Uppers",
                level: 0,
              ),
              new SkillCards(
                icon: Icons.add_to_photos,
                name: "Combat Doctor",
                level: 0,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new SkillCards(
                icon: Icons.add,
                name: "Quick Fix",
                level: 0,
              ),
              new SkillCards(
                icon: Icons.fastfood,
                name: "Painkillers",
                level: 0,
              ),
            ],
          ),
          new SkillCards(
            icon: Icons.healing,
            name: "Combat Doctor",
            level: 0,
          ),
        ],
      ),
    );
  }
}
