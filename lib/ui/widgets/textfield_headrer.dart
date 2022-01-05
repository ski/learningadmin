import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isence/const/app_colors.dart';

Widget TextfieldHeader(String header) {
  return Padding(
    padding: EdgeInsets.only(top: 8.h, bottom: 7.h),
    child: Text(
      header,
      style: TextStyle(
        fontFamily: 'SF Pro',
        fontSize: 14.sp,
        color: AppColors.insane_primary,
        height: 1.64,
      ),
      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
      textAlign: TextAlign.left,
    ),
  );
}
