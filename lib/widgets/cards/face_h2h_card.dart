import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/teams.dart';

class FaceH2HCard extends StatelessWidget {
  FaceH2HCard({
    super.key,
    required this.team1,
    required this.team2,
  });
  Team team1;
  Team team2;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    right: 20,
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
            top: 9,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 116,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 21,
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
                    top: 0,
                    child: Container(
                      width: 338,
                      height: 106,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 31,
                            child: Container(
                              width: 338,
                              height: 75,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 45,
                                    child: Container(
                                      width: 338,
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
                                            right: 10,
                                            top: 9,
                                            child: Text(
                                              Random().nextInt(40).toString(),
                                              style: TextStyle(
                                                color: Color(0xFF262626),
                                                fontSize: 12,
                                                fontFamily: 'Mont',
                                                fontWeight: FontWeight.w800,
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
                                                      'https://api.sofascore1.com/api/v1/team/${team2.id}/image'),
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
                                      width: 338,
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
                                            right: 10,
                                            top: 7,
                                            child: Text(
                                              Random().nextInt(40).toString(),
                                              style: TextStyle(
                                                color: Color(0xFF262626),
                                                fontSize: 12,
                                                fontFamily: 'Mont',
                                                fontWeight: FontWeight.w800,
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
                                                    'https://api.sofascore1.com/api/v1/team/${team1.id}/image',
                                                  ),
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
                            left: 256,
                            top: 0,
                            child: SizedBox(
                              width: 70,
                              child: Text(
                                '${DateFormat('dd.MM').format(DateTime.now().subtract(Duration(days: 1)))} | ${10 + Random().nextInt(10)}:${Random().nextInt(6)}0 ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Mont',
                                  fontWeight: FontWeight.w600,
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
        ],
      ),
    );
  }
}
