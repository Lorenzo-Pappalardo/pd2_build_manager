import 'package:flutter/material.dart';
import 'package:pd2buildmanager/SkillCards.dart';

class Medic extends StatelessWidget {
  final Container getSubtreesBNB;

  Medic({@required this.getSubtreesBNB});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new SkillCards(
          logoName: 'assets/skill_logos/mastermind/medic/Inspire.png',
          name: "Inspire",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SkillCards(
              logoName: 'assets/skill_logos/mastermind/medic/Uppers.png',
              name: "Uppers",
            ),
            new SkillCards(
              logoName: 'assets/skill_logos/mastermind/medic/Combat_Doctor.png',
              name: "Combat Doctor",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SkillCards(
              logoName: 'assets/skill_logos/mastermind/medic/Quick_Fix.png',
              name: "Quick Fix",
            ),
            new SkillCards(
              logoName: 'assets/skill_logos/mastermind/medic/Painkillers.png',
              name: "Painkillers",
            ),
          ],
        ),
        new SkillCards(
          logoName: 'assets/skill_logos/mastermind/medic/Combat_Medic.png',
          name: "Combat Medic",
        ),
        Spacer(),
        getSubtreesBNB,
      ],
    );
  }
}
