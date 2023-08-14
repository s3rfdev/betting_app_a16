import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../api/api.dart';
import '../models/teams.dart';
import '../models/tournamets.dart';
import '../res/styles.dart';
import '../widgets/appbar.dart';
import '../widgets/sport_name_header.dart';
import 'live_page.dart';

class CompListPage extends StatefulWidget {
  CompListPage({super.key, required this.title});
  String title;
  @override
  State<CompListPage> createState() => _CompListPageState();
}

class _CompListPageState extends State<CompListPage> {
  Tournaments? tr;
  @override
  void initState() {
    () async {
      var tmp = await SofaApi.getTournaments();
      setState(() {
        tr = tmp;
      });
    }();
    super.initState();
  }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    print(tr?.tournamentMap.length);

    return Scaffold(
        backgroundColor: grey,
        appBar: appBar(title: 'Competition list'),
        body: SingleChildScrollView(
          child: tr != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SportNameHeader(
                      title: widget.title,
                    ),
                    ...tr!.tournamentMap.values
                        .toList()
                        .take(20)
                        .toList()
                        .reversed
                        .map((e) {
                      return InkWell(
                        onTap: () => Get.to(LivePage()),
                        child: Container(
                          height: 40,
                          color: Colors.white,
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '${e.name}',
                            style: h12w700White.copyWith(
                                color: Colors.black, fontSize: 11),
                          ),
                        ),
                      );
                    }).toList(),
                    SportNameHeader(
                      title: "badminton",
                    ),
                    ...tr!.tournamentMap.values
                        .toList()
                        .reversed
                        .take(15)
                        .toList()
                        .reversed
                        .map((e) {
                      return InkWell(
                        onTap: () => Get.to(LivePage()),
                        child: Container(
                          height: 40,
                          color: Colors.white,
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '${e.name}',
                            style: h12w700White.copyWith(
                                color: Colors.black, fontSize: 11),
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                )
              : Container(
                  height: 200,
                  child: Center(child: CircularProgressIndicator())),
        ));
  }
}
