import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isence/const/app_colors.dart';




BoxDecoration CardBox() {
    return BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: AppColors.insane_white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.insane_primary.withOpacity(0.05),
                            offset: Offset(0, 6),
                            blurRadius: 7,
                          ),
                        ],
                      );
  }
