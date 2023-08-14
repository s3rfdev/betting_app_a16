import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../api/api.dart';
import '../models/teams.dart';
import '../res/styles.dart';
import '../widgets/appbar.dart';
import '../widgets/team_card.dart';
import 'live_details_page.dart';

class LivePage extends StatefulWidget {
  LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
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

  int max = 20 + Random().nextInt(20);
  int i = 30 + 60;
  @override
  Widget build(BuildContext context) {
    print(teams?.teamsMap.length);

    return Scaffold(
        backgroundColor: grey,
        appBar: appBar(title: 'Live'),
        body: SingleChildScrollView(
          child: teams != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                          team2: teams!.teamsMap.values
                              .toList()[Random().nextInt(i)],
                        )),
                        child: TeamCard(
                          team1: e,
                          team2: teams!.teamsMap.values
                              .toList()[Random().nextInt(i)],
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
