import 'package:flutter/material.dart';

import '../../models/teams.dart';

class FaceCard extends StatelessWidget {
  FaceCard({
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
      height: 94,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              height: 94,
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
            top: 10,
            child: Container(
              width: 300,
              height: 74,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 1,
                    child: Container(
                      width: 84,
                      height: 73,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 60,
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
                            left: 17,
                            top: 0,
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://api.sofascore1.com/api/v1/team/${team1.id}/image'),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 192,
                    top: 1,
                    child: Container(
                      width: 108,
                      height: 73,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 60,
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
                            left: 29,
                            top: 0,
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://api.sofascore1.com/api/v1/team/${team2.id}/image'),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 145,
                    top: 0,
                    child: Text(
                      '55`',
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
          Positioned(
            left: 0,
            top: 94,
            child: Container(
              width: 360,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFCCCCCC),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
