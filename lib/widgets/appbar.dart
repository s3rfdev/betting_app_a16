import 'package:flutter/material.dart';

import '../res/styles.dart';

appBar({required String title}) {
  return AppBar(
    backgroundColor: green,
    title: Text(
      title,
      style: h12w700White,
    ),
    centerTitle: true,
  );
}
