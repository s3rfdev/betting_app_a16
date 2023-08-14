import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';
import '../widgets/appbar.dart';
import '../widgets/home/home_bg_container.dart';
import 'comp_list_page.dart';
import 'live_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      appBar: appBar(title: 'Sport'),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(height: MediaQuery.of(context).size.height),
            HomeBgContainer(),
            InkWell(
              onTap: () => {Get.to(LivePage())},
              child: Container(
                width: 150,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: green2,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text('LIVE', style: h12w700White),
              ),
            ),
            Positioned(
                bottom: 20,
                child: InkWell(
                  onTap: () => Get.to(CompListPage(title: 'Squash')),
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
                              color: Color(0xFF262626),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 19,
                          top: 8,
                          child: Text(
                            'COMPETITION LIST',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Mont',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
