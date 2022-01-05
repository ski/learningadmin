import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isence/const/app_colors.dart';


Widget ChaptersNumber( String description,String number) {
  return Container(
    height: 36.h,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: AppColors.insane_primary.withOpacity(0.05),
          width: 1
        )
      )
    ),
    child: Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        Text(
          description,
          style: TextStyle(
            fontFamily: 'SF Pro',
            fontSize: 14.sp,
            color: AppColors.insane_primary,
            height: 1.64,
          ),
          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
        Padding(
           padding:   EdgeInsets.only(right:15.w),
          child: Text(
            number,
            style: TextStyle(
              fontFamily: 'SF Pro',
              fontSize: 14.sp,
              color: AppColors.insane_primary,
              height: 1.64,
            ),
            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    ),
  );
}
