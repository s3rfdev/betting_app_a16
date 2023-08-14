import 'package:flutter/material.dart';

import '../models/teams.dart';
import '../res/styles.dart';
import '../widgets/appbar.dart';
import '../widgets/home/card_header.dart';
import '../widgets/home/details_body.dart';

class LiveDetailsPage extends StatelessWidget {
  LiveDetailsPage({
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
      appBar: appBar(title: 'Translation'),
      body: SingleChildScrollView(
        child: Column(children: [
          CardHeader(),
          DetailsBody(
            team1: team1,
            team2: team2,
          ),
        ]),
      ),
    );
  }
}
