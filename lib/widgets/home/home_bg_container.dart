import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../../pages/comp_list_page.dart';

class HomeBgContainer extends StatelessWidget {
  const HomeBgContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 260,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 90,
              height: 90,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: InkWell(
                      onTap: () => {
                        Get.to(CompListPage(
                          title: 'Squash',
                        ))
                      },
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 90,
                                height: 90,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: Image.asset('images/h1.png'),
                              ),
                            ),
                            Positioned(
                              left: 55,
                              top: 70,
                              child: Container(
                                width: 35,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 35,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF32A76F),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 13,
                                      top: 3,
                                      child: Text(
                                        '11',
                                        textAlign: TextAlign.center,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 170,
            top: 0,
            child: Container(
              width: 90,
              height: 90,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: InkWell(
                      onTap: () => {
                        Get.to(CompListPage(
                          title: 'Badminton',
                        ))
                      },
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 90,
                                height: 90,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: Image.asset('images/h3.png'),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 70,
                              child: Container(
                                width: 35,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 35,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF32A76F),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 12,
                                      top: 3,
                                      child: Text(
                                        '12',
                                        textAlign: TextAlign.center,
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
                          ],
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
            top: 170,
            child: Container(
              width: 90,
              height: 90,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: InkWell(
                      onTap: () => {
                        Get.to(CompListPage(
                          title: 'table tennis',
                        ))
                      },
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 90,
                                height: 90,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: Image.asset('images/h2.png'),
                              ),
                            ),
                            Positioned(
                              left: 55,
                              top: 0,
                              child: Container(
                                width: 35,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 35,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF32A76F),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 14,
                                      top: 3,
                                      child: Text(
                                        '5',
                                        textAlign: TextAlign.center,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 170,
            top: 170,
            child: Container(
              width: 90,
              height: 90,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: InkWell(
                      onTap: () => {
                        Get.to(CompListPage(
                          title: 'tennis',
                        ))
                      },
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 90,
                                height: 90,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: Image.asset('images/h4.png'),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 35,
                                height: 20,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 35,
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF32A76F),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 15,
                                      top: 3,
                                      child: Text(
                                        '1',
                                        textAlign: TextAlign.center,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 23,
                    top: 23,
                    child: Container(
                      width: 44.99,
                      height: 45,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 12.86,
                              height: 12.86,
                              decoration: ShapeDecoration(
                                shape: OvalBorder(side: BorderSide(width: 1)),
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
