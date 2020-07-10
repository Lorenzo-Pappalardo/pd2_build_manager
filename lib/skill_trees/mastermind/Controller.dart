import 'package:flutter/material.dart';
import 'package:pd2buildmanager/SkillCards.dart';

class Controller extends StatelessWidget {
  final Container getSubtreesBNB;

  Controller({@required this.getSubtreesBNB});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new SkillCards(
          logoName:
              'assets/skill_logos/mastermind/controller/Hostage_Taker.png',
          name: "Hostage Taker",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SkillCards(
              logoName:
                  'assets/skill_logos/mastermind/controller/Stockholm_Syndrome.png',
              name: "Stockholm Syndrome",
            ),
            new SkillCards(
              logoName:
                  'assets/skill_logos/mastermind/controller/Partners_In_Crime.png',
              name: "Partners In Crime",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new SkillCards(
              logoName:
                  'assets/skill_logos/mastermind/controller/Confident.png',
              name: "Confident",
            ),
            new SkillCards(
              logoName: 'assets/skill_logos/mastermind/controller/Joker.png',
              name: "Joker",
            ),
          ],
        ),
        new SkillCards(
          logoName:
              'assets/skill_logos/mastermind/controller/Forced_Friendship.png',
          name: "Forced Friendship",
        ),
        Spacer(),
        getSubtreesBNB,
      ],
    );
  }
}
