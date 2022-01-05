import 'package:flutter/material.dart';


Widget ExpandableTitle(String title) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: 'SF Pro',
      fontSize: 14,
      color:  Color(0xff1b3950),
      fontWeight: FontWeight.w500,
      height: 3,
    ),
    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
    textAlign: TextAlign.left,
  );
}