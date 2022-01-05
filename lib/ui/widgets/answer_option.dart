import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/widgets/textfield_headrer.dart';

Widget AnswerOption(String option) {
  return Container(
    height: 45.h,
    width: 40.w,
    decoration: BoxDecoration(
      color: Color(0xfff3f6f9),
      border: Border.all(width: 1.0, color:AppColors.insane_border),
    ),
    child: Center(child: TextfieldHeader(option)),
  );
}

