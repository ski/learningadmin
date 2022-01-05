import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/views/tab_controller/courses/addnew_courses.dart';
import 'package:isence/ui/views/tab_controller/dashboard/dashboard.dart';

import 'package:isence/ui/widgets/expandable_subtitle.dart';
import 'package:isence/ui/widgets/expandable_title.dart';

class TabControllerScreen extends StatefulWidget {
  @override
  _TabControllerScreenState createState() => _TabControllerScreenState();
}

class _TabControllerScreenState extends State<TabControllerScreen> {
  int _currentIndex = 0;
  currentScreen() {
    if (_currentIndex == 0) {
      return Dashboard();
    } else if (_currentIndex == 1) {
      return AddNewCources();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: 260.w,
              color: AppColors.insane_white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/logo/logo.png",
                          height: 24.h,
                          width: 106.w,
                        ),
                        Container(
                          height: 27.h,
                          width: 65.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.r),
                            color: Color(0xfff9bc7d),
                          ),
                          child: Center(
                            child: Text(
                              'Admin',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13.sp,
                                color: AppColors.insane_white,
                                letterSpacing: 0.46,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, top: 35.w, bottom: 35.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.dashboard,
                            size: 15.w,
                            color: AppColors.insane_button,
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Text(
                            'Dashboard',
                            style: TextStyle(
                              fontFamily: 'SF Pro',
                              fontSize: 17.sp,
                              color: AppColors.insane_primary,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.all(0),
                    backgroundColor: AppColors.insane_button.withOpacity(0.04),
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    title: Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, top: 10.w, bottom: 10.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.folder,
                            size: 14.w,
                            color: AppColors.insane_button,
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          ExpandableTitle('Courses')
                        ],
                      ),
                    ),
                    trailing: Icon(
                      Icons.ac_unit,
                      color: Colors.transparent,
                    ),
                    children: [
                      Container(
                        color: AppColors.insane_white,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 38.w, top: 5.w, bottom: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      _currentIndex = 1;
                                    });
                                  },
                                  child: ExpandableSubtitle('Add New Courses')),
                              ExpandableSubtitle('All Courses'),
                              ExpandableSubtitle('Manage Courses')
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.all(0),
                    backgroundColor: AppColors.insane_button.withOpacity(0.04),
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    title: Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, top: 10.w, bottom: 10.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.userGraduate,
                            size: 14.w,
                            color: AppColors.insane_button,
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          ExpandableTitle('Students')
                        ],
                      ),
                    ),
                    trailing: Icon(
                      Icons.ac_unit,
                      color: Colors.transparent,
                    ),
                    children: [
                      Container(
                        color: AppColors.insane_white,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 38.w, top: 5.w, bottom: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ExpandableSubtitle('Add Student'),
                              ExpandableSubtitle('All Students'),
                              ExpandableSubtitle('Active Students'),
                              ExpandableSubtitle('Bulk Enroll'),
                              ExpandableSubtitle('Import/Export'),
                              ExpandableSubtitle('Message Students'),
                              ExpandableSubtitle('Verify Code'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.all(0),
                    backgroundColor: AppColors.insane_button.withOpacity(0.04),
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    title: Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, top: 10.w, bottom: 10.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.tools,
                            size: 14.w,
                            color: AppColors.insane_button,
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          ExpandableTitle('Utility')
                        ],
                      ),
                    ),
                    trailing: Icon(
                      Icons.ac_unit,
                      color: Colors.transparent,
                    ),
                    children: [
                      Container(
                        color: AppColors.insane_white,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 38.w, top: 5.w, bottom: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ExpandableSubtitle('Manage Instructor'),
                              ExpandableSubtitle('Discussions'),
                              ExpandableSubtitle('Profile'),
                              ExpandableSubtitle('Logout')
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              //width: 1340.w,
              //color: Colors.green,
              color: Color(0xffEBF0F6),
              child: currentScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
