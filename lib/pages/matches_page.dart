import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../api/api.dart';
import '../models/teams.dart';
import '../res/styles.dart';
import '../widgets/appbar.dart';
import '../widgets/cards/face_h2h_card.dart';
import '../widgets/letter_container.dart';
import '../widgets/sport_name_header.dart';
import 'live_details_page.dart';

class MatchesPage extends StatefulWidget {
  MatchesPage({super.key});

  @override
  State<MatchesPage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  Teams? teams;
  @override
  void initState() {
    () async {
      var tmp = await SofaApi.getTeams(trId: 52327);
      setState(() {
        teams = tmp;
      });
    }();
    super.initState();
  }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    print(teams?.teamsMap.length);
    int max = 20 + Random().nextInt(20);
    int i = max;
    return Scaffold(
        backgroundColor: grey,
        appBar: appBar(title: 'Over type'),
        body: SingleChildScrollView(
          child: teams != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SportNameHeader(title: 'Squash'),
                    SizedBox(height: 10),
                    Container(
                      width: 340,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => setState(() {
                              index = 0;
                            }),
                            child: LetterContainer(
                                isActive: index == 0, title: 'M'),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              index = 1;
                            }),
                            child: LetterContainer(
                                isActive: index == 1, title: 'W'),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              index = 2;
                            }),
                            child: LetterContainer(
                                isActive: index == 2, title: 'MD'),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              index = 3;
                            }),
                            child: LetterContainer(
                                isActive: index == 3, title: 'WD'),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              index = 4;
                            }),
                            child: LetterContainer(
                                isActive: index == 4, title: 'XD'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    ...teams!.teamsMap.values
                        .toList()
                        .take(max)
                        .toList()
                        .reversed
                        .map((e) {
                      setState(() {
                        i = i + 1;
                      });
                      return InkWell(
                        onTap: () => Get.to(LiveDetailsPage(
                          team1: e,
                          team2: teams!.teamsMap.values.toList()[i],
                        )),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: FaceH2HCard(
                            team1: e,
                            team2: teams!.teamsMap.values.toList()[i],
                          ),
                        ),
                      );
                    }
                            // TeamContainer(
                            //   id: e.id,
                            //   name: e.name,
                            // ),
                            ).toList(),
                  ],
                )
              : Container(
                  height: 200,
                  child: Center(child: CircularProgressIndicator())),
        ));
  }
}
