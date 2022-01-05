import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isence/const/app_colors.dart';


Widget CourseTextfield(BuildContext context, String hinttext) {
  return Container(
    height: 45.h,
    width: MediaQuery.of(context).size.width / 2,
    child: TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: BorderSide(
                color: AppColors.insane_primary.withOpacity(0.2), width: 1),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 11.h),
          filled: true,
          fillColor: AppColors.insane_white,
          hintText: hinttext,
          hintStyle: TextStyle(
            fontFamily: "SF Pro",
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.insane_primary.withOpacity(0.5),
          )),
    ),
  );
}
