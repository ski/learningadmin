import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isence/const/app_colors.dart';

Widget ContentCard(context, String title) {
  return Container(
      height: 48.h,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.insane_primary.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(4.r),
        color: AppColors.insane_white,
        boxShadow: [
          BoxShadow(
            color: AppColors.insane_primary.withOpacity(0.05),
            offset: Offset(0, 6),
            blurRadius: 7,
          ),
        ],
      ),
      //decoration: CardBox(),
      child: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'SF Pro',
                fontSize: 14.sp,
                color: AppColors.insane_primary,
                fontWeight: FontWeight.w500,
                // height: 1.4285714285714286,
              ),
              //textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.edit,
                  size: 17.w,
                  color: AppColors.insane_primary,
                ),
                SizedBox(
                  width: 25.w,
                ),
                FaIcon(
                  FontAwesomeIcons.trash,
                  size: 17.w,
                  color: AppColors.insane_primary,
                ),
                SizedBox(
                  width: 25.w,
                ),
                Container(
                  height: 23.h,
                  width: 23.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.insane_primary.withOpacity(0.1)),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.chevronDown,
                      size: 17.w,
                      color: AppColors.insane_primary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ));
}
