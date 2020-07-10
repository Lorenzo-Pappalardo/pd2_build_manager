import 'package:flutter/material.dart';
import 'package:pd2buildmanager/SkillCards.dart';

class Sharpshooter extends StatelessWidget {
  final Container getSubtreesBNB;

  Sharpshooter({@required this.getSubtreesBNB});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new SkillCards(
          logoName: 'assets/skill_logos/mastermind/sharpshooter/Graze.png',
          name: "Graze",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SkillCards(
              logoName:
                  'assets/skill_logos/mastermind/sharpshooter/Ammo_Efficiency.png',
              name: "Ammo Efficiency",
            ),
            new SkillCards(
              logoName:
                  'assets/skill_logos/mastermind/sharpshooter/Aggressive_Reload.png',
              name: "Aggressive Reload",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SkillCards(
              logoName:
                  'assets/skill_logos/mastermind/sharpshooter/Rifleman.png',
              name: "Rifleman",
            ),
            new SkillCards(
              logoName:
                  'assets/skill_logos/mastermind/sharpshooter/Marksman.png',
              name: "Marksman",
            ),
          ],
        ),
        new SkillCards(
          logoName:
              'assets/skill_logos/mastermind/sharpshooter/Stable_Shot.png',
          name: "Stable Shot",
        ),
        Spacer(),
        getSubtreesBNB,
      ],
    );
  }
}
