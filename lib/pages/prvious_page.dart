import 'package:flutter/material.dart';

import '../models/teams.dart';
import '../res/styles.dart';
import '../widgets/appbar.dart';
import '../widgets/cards/face_card.dart';
import '../widgets/cards/face_h2h_card.dart';
import '../widgets/home/card_header.dart';

class PreviousPage extends StatelessWidget {
  PreviousPage({
    super.key,
    required this.team1,
    required this.team2,
  });
  Team team1;
  Team team2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      appBar: appBar(title: 'Previous'),
      body: SingleChildScrollView(
        child: Column(children: [
          CardHeader(),
          FaceCard(team1: team1, team2: team2),
          SizedBox(height: 10),
          FaceH2HCard(team1: team1, team2: team2),
          SizedBox(height: 10),
          FaceH2HCard(team1: team2, team2: team1),
          SizedBox(height: 10),
          FaceH2HCard(team1: team2, team2: team1),
        ]),
      ),
    );
  }
}
