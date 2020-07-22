import 'package:flutter/material.dart';
import 'package:pd2buildmanager/SkillCards.dart';

class AmmoSpecialist extends StatelessWidget {
  final Container getSubtreesBNB;

  AmmoSpecialist({@required this.getSubtreesBNB});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new SkillCards(
          logoName:
              'assets/skill_logos/enforcer/ammo_specialist/Fully_Loaded.png',
          name: "Fully Loaded",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SkillCards(
              logoName:
                  'assets/skill_logos/enforcer/ammo_specialist/Extra_Lead.png',
              name: "Extra Lead",
            ),
            new SkillCards(
              logoName:
                  'assets/skill_logos/enforcer/ammo_specialist/Saw_Massacre.png',
              name: "Saw Massacre",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SkillCards(
              logoName:
                  'assets/skill_logos/enforcer/ammo_specialist/Bulletstorm.png',
              name: "Bulletstorm",
            ),
            new SkillCards(
              logoName:
                  'assets/skill_logos/enforcer/ammo_specialist/Portable_Saw.png',
              name: "Portable Saw",
            ),
          ],
        ),
        new SkillCards(
          logoName: 'assets/skill_logos/enforcer/ammo_specialist/Scavenger.png',
          name: "Scavenger",
        ),
        Spacer(),
        getSubtreesBNB,
      ],
    );
  }
}
