import 'package:flutter/material.dart';
import 'package:pd2buildmanager/SkillCards.dart';

class Shotgunner extends StatelessWidget {
  final Container getSubtreesBNB;

  Shotgunner({@required this.getSubtreesBNB});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new SkillCards(
          logoName: 'assets/skill_logos/enforcer/shotgunner/Overkill.png',
          name: "Overkill",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SkillCards(
              logoName: 'assets/skill_logos/enforcer/shotgunner/Far_Away.png',
              name: "Far Away",
            ),
            new SkillCards(
              logoName: 'assets/skill_logos/enforcer/shotgunner/Close_By.png',
              name: "Close By",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SkillCards(
              logoName:
                  'assets/skill_logos/enforcer/shotgunner/Shotgun_CQB.png',
              name: "Shotgun CQB",
            ),
            new SkillCards(
              logoName:
                  'assets/skill_logos/enforcer/shotgunner/Shotgun_Impact.png',
              name: "Shotgun Impact",
            ),
          ],
        ),
        new SkillCards(
          logoName: 'assets/skill_logos/enforcer/shotgunner/Underdog.png',
          name: "Underdog",
        ),
        Spacer(),
        getSubtreesBNB,
      ],
    );
  }
}
