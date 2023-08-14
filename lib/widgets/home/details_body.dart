import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/route_manager.dart';

import '../../models/teams.dart';
import '../../pages/face_page.dart';
import '../../pages/prvious_page.dart';

class DetailsBody extends StatelessWidget {
  DetailsBody({
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
      height: 403,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 313,
              alignment: Alignment.center,
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
            top: 8,
            child: Container(
              width: 30,
              height: 15,
              decoration: ShapeDecoration(
                color: Color(0xFF32A76F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
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
                            // left: 0,

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
                  Positioned(
                    left: 148,
                    top: 19,
                    child: Text(
                      '-',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 10,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 98,
                    top: 13,
                    child: Container(
                      width: 95,
                      height: 26,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              '12',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF262626),
                                fontSize: 20,
                                fontFamily: 'Mont',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 83,
                            top: 0,
                            child: Text(
                              '5',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF262626),
                                fontSize: 20,
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
          Positioned(
            top: 94,
            child: Container(
              width: MediaQuery.of(context).size.width,
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
          Positioned(
            top: 167,
            child: Container(
              width: MediaQuery.of(context).size.width,
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
          Positioned(
            top: 240,
            child: Container(
              width: MediaQuery.of(context).size.width,
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
          Positioned(
            top: 313,
            child: Container(
              width: MediaQuery.of(context).size.width,
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
          Positioned(
            top: 104,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              height: 53,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '12`  - ',
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 10,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'First of all, the constant quantitative growth and scope of our activity contributes to the preparation and realization of existing financial and administrative conditions. Our case is not as unambiguous as.',
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 10,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 177,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              height: 53,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '14`  - ',
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 10,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'First of all, the constant quantitative growth and scope of our activity contributes to the preparation and realization of existing financial and administrative conditions. Our case is not as unambiguous as.',
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 10,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 250,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              height: 53,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '25`  - ',
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 10,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'First of all, the constant quantitative growth and scope of our activity contributes to the preparation and realization of existing financial and administrative conditions. Our case is not as unambiguous as.',
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 10,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 333,
            child: Container(
              width: 150,
              height: 70,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: InkWell(
                      onTap: () => Get.to(FacePage(team1: team1, team2: team2)),
                      child: Container(
                        width: 150,
                        height: 30,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF14805E),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 34,
                              top: 8,
                              child: Text(
                                'FACE TO FACE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF262626),
                                  fontSize: 12,
                                  fontFamily: 'Mont',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 40,
                    child: InkWell(
                      onTap: () => Get.to(PreviousPage(
                        team1: team1,
                        team2: team2,
                      )),
                      child: Container(
                        width: 150,
                        height: 30,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF14805E),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 45,
                              top: 8,
                              child: Text(
                                'PREVIOUS',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF262626),
                                  fontSize: 12,
                                  fontFamily: 'Mont',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
