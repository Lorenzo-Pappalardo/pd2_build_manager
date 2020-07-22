import 'package:flutter/material.dart';
import 'package:pd2buildmanager/SkillCards.dart';

class Tank extends StatelessWidget {
  final Container getSubtreesBNB;

  Tank({@required this.getSubtreesBNB});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new SkillCards(
          logoName: 'assets/skill_logos/enforcer/tank/Iron_Man.png',
          name: "Iron Man",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SkillCards(
              logoName: 'assets/skill_logos/enforcer/tank/Shock_And_Awe.png',
              name: "Shock And Awe",
            ),
            new SkillCards(
              logoName: 'assets/skill_logos/enforcer/tank/Bullseye.png',
              name: "Bullseye",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SkillCards(
              logoName: 'assets/skill_logos/enforcer/tank/Die_Hard.png',
              name: "Die Hard",
            ),
            new SkillCards(
              logoName: 'assets/skill_logos/enforcer/tank/Transporter.png',
              name: "Transporter",
            ),
          ],
        ),
        new SkillCards(
          logoName: 'assets/skill_logos/enforcer/tank/Resilience.png',
          name: "Resilience",
        ),
        Spacer(),
        getSubtreesBNB,
      ],
    );
  }
}
