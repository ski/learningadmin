import 'package:flutter/material.dart';


Widget ExpandableSubtitle(String subtitle) {
  return Text(
    subtitle,
    style: TextStyle(
      fontFamily: 'SF Pro',
      fontSize: 13,
      color: Color(0xcc1b3950),
      height: 2.5,
    ),
    textAlign: TextAlign.left,
  );
}