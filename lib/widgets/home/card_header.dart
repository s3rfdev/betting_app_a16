import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            left: 338,
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
    );
  }
}
