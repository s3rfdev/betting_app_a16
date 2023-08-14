import 'package:flutter/material.dart';

import '../res/styles.dart';

class LetterContainer extends StatelessWidget {
  LetterContainer({
    super.key,
    required this.isActive,
    required this.title,
  });
  bool isActive;
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 30,
      margin: EdgeInsets.all(4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? green2 : green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: h12w700White.copyWith(color: isActive ? Colors.black : grey),
      ),
    );
  }
}
