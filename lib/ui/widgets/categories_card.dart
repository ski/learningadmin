import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isence/const/app_colors.dart';

Widget CategoriesCard(IconData icon,String title,String subtitle) {
    return Container(
      height: 105.h,
      width: 200.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Color(0xfffafbfd),
        boxShadow: [
          BoxShadow(
            color: Color(0x050b1721),
            offset: Offset(0, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: Padding(
        padding:  EdgeInsets.all(20.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50.h,width: 45.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.r),
                  color: AppColors.insane_button.withOpacity(0.05)),
              child: Center(
                child: FaIcon(
                 icon,
                  size: 23.w,
                  color: AppColors.insane_button,
                ),
              ),
            ),
            SizedBox(width: 15.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'SF Pro',
                    fontSize: 20.sp,
                    color: AppColors.insane_primary,
                    fontWeight: FontWeight.w800,
                    height: 1.15,
                  ),
                  textHeightBehavior: TextHeightBehavior(
                      applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 7.h,),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: 'SF Pro',
                    fontSize: 15.sp,
                    color: AppColors.insane_primary,
                    height: 1.5,
                  ),
                  textHeightBehavior: TextHeightBehavior(
                      applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
