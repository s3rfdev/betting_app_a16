import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/teams.dart';

class TeamCard extends StatelessWidget {
  TeamCard({
    super.key,
    required this.team1,
    required this.team2,
  });

  Team team1;
  Team team2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width,
      height: 125,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: ShapeDecoration(
                        color: Color(0xFF14805E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(2),
                            topRight: Radius.circular(2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 8,
                    child: Text(
                      'SQUASH CUP LEGEND',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Positioned(
                    width: MediaQuery.of(context).size.width - 20,
                    top: 8,
                    child: Text(
                      'M',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 30,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 95,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 95,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(2),
                            bottomRight: Radius.circular(2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      width: 340,
                      height: 75,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 75,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 45,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 40,
                                            top: 9,
                                            child: Text(
                                              team1.name,
                                              style: TextStyle(
                                                color: Color(0xFF262626),
                                                fontSize: 10,
                                                fontFamily: 'Mont',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: ShapeDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://api.sofascore1.com/api/v1/team/${team1.id}/image"),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(80),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 30,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 40,
                                            top: 9,
                                            child: Text(
                                              team2.name,
                                              style: TextStyle(
                                                color: Color(0xFF262626),
                                                fontSize: 10,
                                                fontFamily: 'Mont',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: ShapeDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://api.sofascore1.com/api/v1/team/${team2.id}/image"),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(80),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 25,
                            child: Text(
                              '${DateFormat('dd.MM').format(DateTime.now().subtract(Duration(days: 1)))}\n${10 + Random().nextInt(50)}:${10 + Random().nextInt(50)}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF262626),
                                fontSize: 10,
                                fontFamily: 'Mont',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
