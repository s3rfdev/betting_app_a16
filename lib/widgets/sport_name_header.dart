import 'package:flutter/material.dart';

import '../res/styles.dart';

class SportNameHeader extends StatelessWidget {
  SportNameHeader({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      padding: EdgeInsets.all(5),
      color: green,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/h4.png',
            color: Colors.white,
          ),
          SizedBox(width: 7),
          Text(
            title.toUpperCase(),
            style: h12w700White.copyWith(
                fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
