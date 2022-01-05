import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/styles/styles.dart';
import 'package:isence/ui/widgets/regular_text.dart';


Widget ClickableContentCard(context, String title, String subtitleone,
    String subtitletwo, String subtitlethree) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
          height: 48.h,
          width: MediaQuery.of(context).size.width / 2,
          decoration: CardBox(),
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
          )),
      Padding(
        padding: EdgeInsets.only(left: 20.w, right: 15.w),
        child: Row(
          children: [
            FaIcon(
              FontAwesomeIcons.playCircle,
              size: 12.w,
              color: AppColors.insane_primary,
            ),
            SizedBox(
              width: 20.w,
            ),
            RegularText(subtitleone),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20.w, right: 15.w),
        child: Row(
          children: [
            FaIcon(
              FontAwesomeIcons.questionCircle,
              size: 12.w,
              color: AppColors.insane_primary,
            ),
            SizedBox(
              width: 20.w,
            ),
            RegularText(subtitletwo),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20.w, right: 15.w, bottom: 15.h),
        child: Row(
          children: [
            FaIcon(
              FontAwesomeIcons.download,
              size: 12.w,
              color: AppColors.insane_primary,
            ),
            SizedBox(
              width: 20.w,
            ),
            RegularText(subtitlethree),
          ],
        ),
      ),
    ],
  );
}
