import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isence/const/app_colors.dart';

Widget DialogTextfield(radio) {
  return Expanded(
    child: Container(
      height: 45.h,
      // width: 300.w,
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: radio,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(0)),
              borderSide: BorderSide(
                  color:AppColors.insane_border, width: 1),
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 9.w, vertical: 11.h),
            filled: true,
            fillColor: AppColors.insane_white,
            hintText: 'Enter Answer',
            hintStyle: TextStyle(
              fontFamily: "SF Pro",
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.insane_primary.withOpacity(0.5),
            )),
      ),
    ),
  );
}

