import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/styles/styles.dart';
import 'package:isence/ui/views/tab_controller/dashboard/dashboard.dart';
import 'package:isence/ui/widgets/angel_icon.dart';

import 'package:isence/ui/widgets/answer_option.dart';
import 'package:isence/ui/widgets/clickable_content_card.dart';
import 'package:isence/ui/widgets/clickable_course_card.dart';
import 'package:isence/ui/widgets/content_card.dart';
import 'package:isence/ui/widgets/course_card_review.dart';
import 'package:isence/ui/widgets/course_includes.dart';
import 'package:isence/ui/widgets/course_textfield.dart';
import 'package:isence/ui/widgets/dialog_textfield.dart';
import 'package:isence/ui/widgets/instructor_button.dart';
import 'package:isence/ui/widgets/learn_card.dart';
import 'package:isence/ui/widgets/post_identity.dart';
import 'package:isence/ui/widgets/regular_text.dart';
import 'package:isence/ui/widgets/review_description.dart';
import 'package:isence/ui/widgets/review_heading.dart';
import 'package:isence/ui/widgets/textfield_headrer.dart';

class AddNewCources extends StatefulWidget {
  @override
  _AddNewCourcesState createState() => _AddNewCourcesState();
}

class _AddNewCourcesState extends State<AddNewCources> {
  String dropdownValue = 'Suhail Manzoor';
  String selectCategory = 'Nursing';

  var _radioSelected;
  String? _radioVal;

  bool _check = true;
  bool isClick = false;
  bool onClick = true;
  int currentIndex = 0;
  int length = 4;

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Container(
          height: 45.h,
          width: 170.w,
          decoration: BoxDecoration(
              color: AppColors.insane_button.withOpacity(0.08),
              borderRadius: BorderRadius.all(Radius.circular(3.r))),
          child: Center(
              child: Text(
            'Back To Dashboard',
            style: TextStyle(
              fontFamily: 'SF Pro',
              fontSize: 15.sp,
              color: AppColors.insane_primary,
              fontWeight: FontWeight.w500,
              height: 1.53,
            ),
          ))),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Container(
          height: 45.h,
          width: 170.w,
          decoration: BoxDecoration(
              color: AppColors.insane_button,
              borderRadius: BorderRadius.all(Radius.circular(3.r))),
          child: Center(
              child: Text(
            'Add More Course',
            style: TextStyle(
              fontFamily: 'SF Pro',
              fontSize: 15.sp,
              color: AppColors.insane_white,
              fontWeight: FontWeight.w500,
              height: 1.53,
            ),
          ))),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Container(
          height: 100.h,
          width: 110.w,
          alignment: Alignment.topCenter,
          child: Image.asset(
            'assets/images/success.png',
            fit: BoxFit.cover,
          )),
      content: Text(
        'Course has been added',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'SF Pro',
          fontSize: 26,
          fontWeight: FontWeight.w700,
          color: AppColors.insane_primary,
          height: 0.96,
        ),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: currentIndex,
      length: length,
      child: Scaffold(
          backgroundColor: AppColors.scafFoldBackground,
          body: Container(
            height: ScreenUtil().screenHeight,
            width: ScreenUtil().screenWidth,
            child: Column(
              children: [
                Container(
                  height: 244.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.insane_button,
                      border: Border.all(color: Color(0xff99BDD9)),
                      borderRadius: BorderRadius.all(Radius.circular(4.r))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DashboardTopbar(context, (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      }, dropdownValue),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.w,
                        ),
                        child: Text(
                          'Add New Courses',
                          style: TextStyle(
                            fontSize: 23.sp,
                            color: AppColors.insane_white,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 20.w, top: 5.h, right: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      width: ScreenUtil().screenWidth / 1.5,
                                      child: TabBar(
                                        indicatorColor: Colors.white,
                                        onTap: (val) {
                                          setState(() {
                                            currentIndex = val;
                                          });
                                        },
                                        tabs: [
                                          Tab(
                                            icon: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      AppColors.insane_button,
                                                  radius: 13,
                                                  child: Center(
                                                    child: Text(
                                                      "1",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 17.sp),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 17.w,
                                                ),
                                                Text(
                                                  "Basic Details",
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .insane_primary,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 17.sp),
                                                )
                                              ],
                                            ),
                                          ),
                                          Tab(
                                            icon: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      AppColors.insane_button,
                                                  radius: 13,
                                                  child: Center(
                                                    child: Text(
                                                      "2",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 17.sp),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 17.w,
                                                ),
                                                Text(
                                                  "Course Content",
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .insane_primary,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 17.sp),
                                                )
                                              ],
                                            ),
                                          ),
                                          Tab(
                                            icon: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      AppColors.insane_button,
                                                  radius: 13,
                                                  child: Center(
                                                    child: Text(
                                                      "3",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 17.sp),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 17.w,
                                                ),
                                                Text(
                                                  "Instructor Details",
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .insane_primary,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 17.sp),
                                                )
                                              ],
                                            ),
                                          ),
                                          Tab(
                                            icon: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      AppColors.insane_button,
                                                  radius: 13,
                                                  child: Center(
                                                    child: Text(
                                                      "4",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 17.sp),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 17.w,
                                                ),
                                                Text(
                                                  "Review",
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .insane_primary,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 17.sp),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    if (currentIndex == 3)
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.grey),
                                            onPressed: () {},
                                            child: Text("Back"),
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.green),
                                            onPressed: () =>
                                                showAlertDialog(context),
                                            child: Text(
                                              "Save",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      )
                                  ],
                                ),
                                if (currentIndex == 0)
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 200.w,
                                        child: Divider(
                                          thickness: 2,
                                          color: AppColors.insane_button,
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            AppColors.insane_button,
                                      ),
                                    ],
                                  ),
                                if (currentIndex == 1)
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 440.w,
                                        child: Divider(
                                          thickness: 2,
                                          color: AppColors.insane_button,
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            AppColors.insane_button,
                                      ),
                                    ],
                                  ),
                                if (currentIndex == 2)
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 640.w,
                                        child: Divider(
                                          thickness: 2,
                                          color: AppColors.insane_button,
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 6,
                                        backgroundColor:
                                            AppColors.insane_button,
                                      ),
                                    ],
                                  ),
                                if (currentIndex == 3)
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 840.w,
                                        child: Divider(
                                          thickness: 2,
                                          color: Colors.green,
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Colors.green,
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: AppColors.insane_card,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x050b1721),
                                offset: Offset(0, 5),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20.w),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextfieldHeader('Course Name'),
                                  CourseTextfield(context, "Enter Name"),
                                  TextfieldHeader('Course Price - In USD'),
                                  CourseTextfield(context, "Enter Amount"),
                                  TextfieldHeader('Select Category'),
                                  Container(
                                    height: 45.h,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        border: Border.all(
                                            color: AppColors.insane_primary
                                                .withOpacity(0.2),
                                            width: 1)),
                                    child: DropdownButton<String>(
                                      value: selectCategory,
                                      icon: Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.5),
                                          child: FaIcon(
                                            FontAwesomeIcons.angleDown,
                                            color: Color(0xff17242E)
                                                .withOpacity(0.45),
                                          ),
                                        ),
                                      ),
                                      iconSize: 20.w,
                                      elevation: 16,
                                      style: TextStyle(
                                        fontFamily: 'SF Pro',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.insane_primary
                                            .withOpacity(0.5),
                                        height: 1.64,
                                      ),
                                      underline: Container(
                                        height: 1,
                                        color: Colors.transparent,
                                      ),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectCategory = newValue!;
                                        });
                                      },
                                      items: <String>[
                                        'Nursing',
                                        'Nursing_2',
                                        'Nursing_3',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          alignment: Alignment.centerLeft,
                                          value: value,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 9.w, right: 20.w),
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  fontFamily: 'SF Pro',
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors
                                                      .insane_primary
                                                      .withOpacity(0.5)),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  TextfieldHeader(
                                      'Certificate Available for this course'),
                                  Container(
                                    height: 45.h,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    decoration: BoxDecoration(
                                        color: Color(0xffffffff),
                                        border: Border.all(
                                            color: AppColors.insane_primary
                                                .withOpacity(0.2),
                                            width: 1)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: _radioSelected,
                                          activeColor: Colors.blue,
                                          onChanged: (value) {
                                            setState(() {
                                              _radioSelected = value;
                                              _radioVal = 'male';
                                            });
                                          },
                                        ),
                                        TextfieldHeader('Yes'),
                                        Container(
                                            height: 18.h,
                                            child: VerticalDivider(
                                                color: Colors.black)),
                                        Radio(
                                          value: 2,
                                          groupValue: _radioSelected,
                                          activeColor: Colors.pink,
                                          onChanged: (value) {
                                            setState(() {
                                              _radioSelected = value;
                                              _radioVal = 'female';
                                            });
                                          },
                                        ),
                                        TextfieldHeader('No'),
                                      ],
                                    ),
                                  ),
                                  TextfieldHeader('What Student Will learn'),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3.r),
                                      color: Color(0xffffffff),
                                      border: Border.all(
                                          width: 1.0,
                                          color: AppColors.insane_primary
                                              .withOpacity(0.2)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              6,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              FaIcon(
                                                FontAwesomeIcons.bold,
                                                size: 17.w,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.italic,
                                                size: 17.w,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.strikethrough,
                                                size: 17.w,
                                              ),
                                              Container(
                                                  height: 17.h,
                                                  width: 1,
                                                  child: VerticalDivider(
                                                      color: AppColors
                                                          .insane_primary
                                                          .withOpacity(0.34))),
                                              FaIcon(
                                                FontAwesomeIcons.textWidth,
                                                size: 17.w,
                                              ),
                                              Container(
                                                  height: 17.h,
                                                  child: VerticalDivider(
                                                      color: AppColors
                                                          .insane_primary
                                                          .withOpacity(0.34))),
                                              FaIcon(
                                                FontAwesomeIcons.listOl,
                                                size: 17.w,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.listUl,
                                                size: 17.w,
                                              )
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: AppColors.insane_primary
                                              .withOpacity(0.06),
                                        ),
                                        TextField(
                                          keyboardType: TextInputType.multiline,
                                          maxLines: null,
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 9.w,
                                                      vertical: 11.h),
                                              hintText: "",
                                              hintStyle: TextStyle(
                                                fontFamily: "SF Pro",
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.insane_primary
                                                    .withOpacity(0.5),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextfieldHeader('Course Description'),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3.r),
                                      color: Color(0xffffffff),
                                      border: Border.all(
                                          width: 1.0,
                                          color: AppColors.insane_primary
                                              .withOpacity(0.2)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              6,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              FaIcon(
                                                FontAwesomeIcons.bold,
                                                size: 17.w,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.italic,
                                                size: 17.w,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.strikethrough,
                                                size: 17.w,
                                              ),
                                              Container(
                                                  height: 17.h,
                                                  width: 1,
                                                  child: VerticalDivider(
                                                      color: AppColors
                                                          .insane_primary
                                                          .withOpacity(0.34))),
                                              FaIcon(
                                                FontAwesomeIcons.textWidth,
                                                size: 17.w,
                                              ),
                                              Container(
                                                  height: 17.h,
                                                  child: VerticalDivider(
                                                      color: AppColors
                                                          .insane_primary
                                                          .withOpacity(0.34))),
                                              FaIcon(
                                                FontAwesomeIcons.listOl,
                                                size: 17.w,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.listUl,
                                                size: 17.w,
                                              )
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: AppColors.insane_primary
                                              .withOpacity(0.06),
                                        ),
                                        TextField(
                                          keyboardType: TextInputType.multiline,
                                          maxLines: null,
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 9.w,
                                                      vertical: 11.h),
                                              hintText: "",
                                              hintStyle: TextStyle(
                                                fontFamily: "SF Pro",
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.insane_primary
                                                    .withOpacity(0.5),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 20.h, left: 180.w),
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: InstructorButton(
                                            "Next", AppColors.insane_button)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: AppColors.insane_card,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x050b1721),
                                offset: Offset(0, 5),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20.w),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextfieldHeader('Course Language'),
                                    Container(
                                      height: 45.h,
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          border: Border.all(
                                              color: AppColors.insane_primary
                                                  .withOpacity(0.2),
                                              width: 1)),
                                      child: DropdownButton<String>(
                                        value: selectCategory,
                                        icon: Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.5),
                                            child: FaIcon(
                                              FontAwesomeIcons.angleDown,
                                              color: Color(0xff17242E)
                                                  .withOpacity(0.45),
                                            ),
                                          ),
                                        ),
                                        iconSize: 20.w,
                                        elevation: 16,
                                        style: TextStyle(
                                          fontFamily: 'SF Pro',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.insane_primary
                                              .withOpacity(0.5),
                                          height: 1.64,
                                        ),
                                        underline: Container(
                                          height: 1,
                                          color: Colors.transparent,
                                        ),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectCategory = newValue!;
                                          });
                                        },
                                        items: <String>[
                                          'Nursing',
                                          'Nursing_2',
                                          'Nursing_3',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            alignment: Alignment.centerLeft,
                                            value: value,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.w, right: 20.w),
                                              child: Text(
                                                value,
                                                style: TextStyle(
                                                    fontFamily: 'SF Pro',
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors
                                                        .insane_primary
                                                        .withOpacity(0.5)),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                    TextfieldHeader('Course Type'),
                                    Container(
                                      height: 45.h,
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          border: Border.all(
                                              color: AppColors.insane_primary
                                                  .withOpacity(0.2),
                                              width: 1)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Radio(
                                            value: 1,
                                            groupValue: _radioSelected,
                                            activeColor: Colors.blue,
                                            onChanged: (value) {
                                              setState(() {
                                                _radioSelected = value;
                                                _radioVal = 'video';
                                              });
                                            },
                                          ),
                                          TextfieldHeader('Video'),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.w),
                                            child: Container(
                                                height: 18.h,
                                                child: VerticalDivider(
                                                    color: Colors.black)),
                                          ),
                                          Radio(
                                            value: 2,
                                            groupValue: _radioSelected,
                                            activeColor: Colors.pink,
                                            onChanged: (value) {
                                              setState(() {
                                                _radioSelected = value;
                                                _radioVal = 'ppt';
                                              });
                                            },
                                          ),
                                          TextfieldHeader('PPT'),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.w),
                                            child: Container(
                                                height: 18.h,
                                                child: VerticalDivider(
                                                    color: Colors.black)),
                                          ),
                                          Radio(
                                            value: 3,
                                            groupValue: _radioSelected,
                                            activeColor: Colors.pink,
                                            onChanged: (value) {
                                              setState(() {
                                                _radioSelected = value;
                                                _radioVal = 'pdf';
                                              });
                                            },
                                          ),
                                          TextfieldHeader('PDF'),
                                        ],
                                      ),
                                    ),
                                    TextfieldHeader('Preview Video Link'),
                                    CourseTextfield(
                                        context, "Vimeo or YouTube Video Link"),
                                    SizedBox(height: 10.h),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Chapter',
                                            style: TextStyle(
                                              fontFamily: 'SF Pro',
                                              fontSize: 17.sp,
                                              color: AppColors.insane_primary,
                                              fontWeight: FontWeight.w500,
                                              height: 1.17,
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(10
                                                                  .r)), //this right here
                                                      child: Container(
                                                        height: 750.h,
                                                        width: 745.w,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  20.w),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: <Widget>[
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Add Chapter',
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'SF Pro',
                                                                      fontSize:
                                                                          17,
                                                                      color: AppColors
                                                                          .insane_button,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          1.1764705882352942,
                                                                    ),
                                                                    textHeightBehavior:
                                                                        TextHeightBehavior(
                                                                            applyHeightToFirstAscent:
                                                                                false),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                  ),
                                                                  Image.asset(
                                                                      'assets/icons/close.png',
                                                                      height:
                                                                          22,
                                                                      width: 22,
                                                                      fit: BoxFit
                                                                          .cover),
                                                                ],
                                                              ),
                                                              Divider(
                                                                color: AppColors
                                                                    .insane_primary
                                                                    .withOpacity(
                                                                        0.06),
                                                              ),
                                                              RegularText(
                                                                  'Chapter Title'),
                                                              SizedBox(
                                                                height: 5.h,
                                                              ),
                                                              Container(
                                                                height: 45.h,
                                                                child:
                                                                    TextField(
                                                                  decoration: InputDecoration(
                                                                      border: OutlineInputBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(0),
                                                                        borderSide: BorderSide(
                                                                            color:
                                                                                AppColors.insane_border,
                                                                            width: 1),
                                                                      ),
                                                                      contentPadding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 11.h),
                                                                      filled: true,
                                                                      fillColor: AppColors.insane_white,
                                                                      hintText: 'Enter title',
                                                                      hintStyle: TextStyle(
                                                                        fontFamily:
                                                                            "SF Pro",
                                                                        fontSize:
                                                                            15.sp,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        color: AppColors
                                                                            .insane_primary
                                                                            .withOpacity(0.5),
                                                                      )),
                                                                ),
                                                              ),
                                                              TextfieldHeader(
                                                                  'Add Videos'),
                                                              Wrap(children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    RegularText(
                                                                        'Video URL'),
                                                                    RegularText(
                                                                        'Video Title'),
                                                                    RegularText(
                                                                        ''),
                                                                  ],
                                                                ),
                                                              ]),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          45.h,
                                                                      // width: 280.w,
                                                                      child:
                                                                          TextField(
                                                                        decoration: InputDecoration(
                                                                            border: OutlineInputBorder(
                                                                              borderRadius: BorderRadius.circular(0),
                                                                              borderSide: BorderSide(color: AppColors.insane_border, width: 1),
                                                                            ),
                                                                            contentPadding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 11.h),
                                                                            filled: true,
                                                                            fillColor: AppColors.insane_white,
                                                                            hintText: 'Enter Vimeo or YouTube URL',
                                                                            hintStyle: TextStyle(
                                                                              fontFamily: "SF Pro",
                                                                              fontSize: 15.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: AppColors.insane_primary.withOpacity(0.5),
                                                                            )),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          45.h,
                                                                      //width: 280.w,
                                                                      child:
                                                                          TextField(
                                                                        decoration: InputDecoration(
                                                                            border: OutlineInputBorder(
                                                                              borderRadius: BorderRadius.circular(0),
                                                                              borderSide: BorderSide(color: AppColors.insane_border, width: 1),
                                                                            ),
                                                                            contentPadding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 11.h),
                                                                            filled: true,
                                                                            fillColor: AppColors.insane_white,
                                                                            hintText: 'Enter Title For Video',
                                                                            hintStyle: TextStyle(
                                                                              fontFamily: "SF Pro",
                                                                              fontSize: 15.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: AppColors.insane_primary.withOpacity(0.5),
                                                                            )),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  InstructorButton(
                                                                      'Add',
                                                                      AppColors
                                                                          .insane_button)
                                                                ],
                                                              ),
                                                              Container(
                                                                height: 70.h,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x99ebf0f6),
                                                                  border: Border.all(
                                                                      width:
                                                                          1.0,
                                                                      color: Color(
                                                                          0x99ced3d6)),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(15
                                                                              .w),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              FaIcon(
                                                                                FontAwesomeIcons.playCircle,
                                                                                size: 12.w,
                                                                                color: AppColors.insane_primary,
                                                                              ),
                                                                              SizedBox(
                                                                                width: 20.w,
                                                                              ),
                                                                              RegularText('What’s happening in Pharma markets?'),
                                                                            ],
                                                                          ),
                                                                          Divider(
                                                                            color:
                                                                                AppColors.insane_primary.withOpacity(0.06),
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              FaIcon(
                                                                                FontAwesomeIcons.edit,
                                                                                size: 12.w,
                                                                                color: AppColors.insane_primary,
                                                                              ),
                                                                              SizedBox(
                                                                                width: 20.w,
                                                                              ),
                                                                              FaIcon(
                                                                                FontAwesomeIcons.trash,
                                                                                size: 12.w,
                                                                                color: AppColors.insane_primary,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              FaIcon(
                                                                                FontAwesomeIcons.playCircle,
                                                                                size: 12.w,
                                                                                color: AppColors.insane_primary,
                                                                              ),
                                                                              SizedBox(
                                                                                width: 20.w,
                                                                              ),
                                                                              RegularText('What’s happening in Pharma markets?'),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              FaIcon(
                                                                                FontAwesomeIcons.edit,
                                                                                size: 12.w,
                                                                                color: AppColors.insane_primary,
                                                                              ),
                                                                              SizedBox(
                                                                                width: 20.w,
                                                                              ),
                                                                              FaIcon(
                                                                                FontAwesomeIcons.trash,
                                                                                size: 12.w,
                                                                                color: AppColors.insane_primary,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              TextfieldHeader(
                                                                  'Add Quize'),
                                                              Container(
                                                                height: 45.h,
                                                                child:
                                                                    TextField(
                                                                  decoration: InputDecoration(
                                                                      border: OutlineInputBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(0),
                                                                        borderSide: BorderSide(
                                                                            color:
                                                                                AppColors.insane_border,
                                                                            width: 1),
                                                                      ),
                                                                      contentPadding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 11.h),
                                                                      filled: true,
                                                                      fillColor: AppColors.insane_white,
                                                                      hintText: 'Enter Question',
                                                                      hintStyle: TextStyle(
                                                                        fontFamily:
                                                                            "SF Pro",
                                                                        fontSize:
                                                                            15.sp,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        color: AppColors
                                                                            .insane_primary
                                                                            .withOpacity(0.5),
                                                                      )),
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  AnswerOption(
                                                                      'A'),
                                                                  DialogTextfield(
                                                                      Radio(
                                                                    value: 1,
                                                                    groupValue:
                                                                        _radioSelected,
                                                                    activeColor:
                                                                        Colors
                                                                            .blue,
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(
                                                                          () {
                                                                        _radioSelected =
                                                                            value;
                                                                        _radioVal =
                                                                            'video';
                                                                      });
                                                                    },
                                                                  )),
                                                                  AnswerOption(
                                                                      'B'),
                                                                  DialogTextfield(
                                                                    Radio(
                                                                      value: 2,
                                                                      groupValue:
                                                                          _radioSelected,
                                                                      activeColor:
                                                                          Colors
                                                                              .blue,
                                                                      onChanged:
                                                                          (value) {
                                                                        setState(
                                                                            () {
                                                                          _radioSelected =
                                                                              value;
                                                                          _radioVal =
                                                                              'video';
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  AnswerOption(
                                                                      'A'),
                                                                  DialogTextfield(
                                                                      Radio(
                                                                    value: 1,
                                                                    groupValue:
                                                                        _radioSelected,
                                                                    activeColor:
                                                                        Colors
                                                                            .blue,
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(
                                                                          () {
                                                                        _radioSelected =
                                                                            value;
                                                                        _radioVal =
                                                                            'video';
                                                                      });
                                                                    },
                                                                  )),
                                                                  AnswerOption(
                                                                      'B'),
                                                                  DialogTextfield(
                                                                    Radio(
                                                                      value: 2,
                                                                      groupValue:
                                                                          _radioSelected,
                                                                      activeColor:
                                                                          Colors
                                                                              .blue,
                                                                      onChanged:
                                                                          (value) {
                                                                        setState(
                                                                            () {
                                                                          _radioSelected =
                                                                              value;
                                                                          _radioVal =
                                                                              'video';
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Text(
                                                                  '+ Add More questions',
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        'SF Pro',
                                                                    fontSize:
                                                                        14.sp,
                                                                    color: AppColors
                                                                        .insane_button,
                                                                    height:
                                                                        1.6428571428571428,
                                                                  ),
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  TextfieldHeader(
                                                                      'Downloadable File'),
                                                                  SizedBox(
                                                                    width: 30.w,
                                                                  ),
                                                                  RegularText(
                                                                      'PDF, ZIP, Doc')
                                                                ],
                                                              ),
                                                              Container(
                                                                height: 45.h,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    2,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              3.r),
                                                                  color: Color(
                                                                      0xffffffff),
                                                                  border: Border.all(
                                                                      width:
                                                                          1.0,
                                                                      color: Color(
                                                                          0xffCED3D6)),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              9.w),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          30.h,
                                                                      width:
                                                                          115.w,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(2.0),
                                                                        color: Color(
                                                                            0xfff3f6f9),
                                                                      ),
                                                                      child: Center(
                                                                          child:
                                                                              TextfieldHeader('Choose File')),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  });
                                            },
                                            child: Container(
                                              height: 35.h,
                                              width: 120.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3.r),
                                                color: Color(0xff38a86c),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '+ Add Chapter',
                                                  style: TextStyle(
                                                    fontFamily: 'SF Pro',
                                                    fontSize: 15.sp,
                                                    color:
                                                        AppColors.insane_white,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    ContentCard(
                                      context,
                                      'Part 1: An Introduction to the Global Pharma Industry',
                                    ),
                                    Container(
                                        height: isClick ? 48.h : 178.h,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        decoration: CardBox(),
                                        child: isClick
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15.w, right: 15.w),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Part 2: An Introduction to the Global Pharma Industry',
                                                      style: TextStyle(
                                                        fontFamily: 'SF Pro',
                                                        fontSize: 14.sp,
                                                        color: AppColors
                                                            .insane_primary,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        // height: 1.4285714285714286,
                                                      ),
                                                      //textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                                    ),
                                                    Row(
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .playCircle,
                                                          size: 13.w,
                                                          color: AppColors
                                                              .insane_primary,
                                                        ),
                                                        SizedBox(
                                                          width: 25.w,
                                                        ),
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .question,
                                                          size: 13.w,
                                                          color: AppColors
                                                              .insane_primary,
                                                        ),
                                                        SizedBox(
                                                          width: 25.w,
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              isClick =
                                                                  !isClick;
                                                            });
                                                          },
                                                          child: Container(
                                                            height: 23,
                                                            width: 23,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              //borderRadius: BorderRadius.all(Radius.elliptical(999, 999)),
                                                              color: Color(
                                                                  0xffe7edf4),
                                                            ),
                                                            child: Center(
                                                                child: FaIcon(
                                                              isClick
                                                                  ? FontAwesomeIcons
                                                                      .chevronDown
                                                                  : FontAwesomeIcons
                                                                      .chevronUp,
                                                              size: 12.w,
                                                              color: AppColors
                                                                  .insane_primary,
                                                            )),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )
                                            : ClickableContentCard(
                                                context,
                                                'title',
                                                'subtitleone',
                                                'subtitletwo',
                                                'subtitlethree')),
                                    ContentCard(
                                      context,
                                      'Part 1: An Introduction to the Global Pharma Industry',
                                    ),
                                    SizedBox(height: 40.h),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InstructorButton(
                                            'Back',
                                            AppColors.insane_primary
                                                .withOpacity(0.08),
                                          ),
                                          SizedBox(
                                            width: 230.w,
                                          ),
                                          InstructorButton(
                                            'Next',
                                            AppColors.insane_button,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: AppColors.insane_card,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x050b1721),
                                offset: Offset(0, 5),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20.w),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextfieldHeader('Instructor Name'),
                                  CourseTextfield(context, "Enter Name"),
                                  TextfieldHeader('Enter Designation'),
                                  CourseTextfield(context, "Enter Designation"),
                                  TextfieldHeader('Instructor Description'),
                                  Container(
                                    height: 140.h,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3.r),
                                      color: Color(0xffffffff),
                                      border: Border.all(
                                          width: 1.0,
                                          color: AppColors.insane_primary
                                              .withOpacity(0.2)),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          // border: OutlineInputBorder(
                                          //   borderRadius: BorderRadius.circular(5.r),
                                          //   borderSide: BorderSide(
                                          //       color:
                                          //           AppColors.insane_primary.withOpacity(0.2),
                                          //       width: 1),
                                          // ),
                                          // contentPadding: EdgeInsets.symmetric(
                                          //     horizontal: 9.w, vertical: 11.h),
                                          filled: true,
                                          fillColor: AppColors.insane_white,
                                          border: InputBorder.none,
                                          hintText: "Write Here",
                                          hintStyle: TextStyle(
                                            fontFamily: "SF Pro",
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.insane_primary
                                                .withOpacity(0.7),
                                          )),
                                    ),
                                  ),
                                  TextfieldHeader(
                                      'Profile Picture of Instructor - Format: PNG or JPG    Size: 200X200'),
                                  Container(
                                    height: 45.h,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3.r),
                                      color: Color(0xffffffff),
                                      border: Border.all(
                                          width: 1.0, color: Color(0xffCED3D6)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 9.w),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 30.h,
                                          width: 115.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2.0),
                                            color: Color(0xfff3f6f9),
                                          ),
                                          child: Center(
                                              child: TextfieldHeader(
                                                  'Choose File')),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      InstructorButton(
                                        'Back',
                                        AppColors.insane_primary
                                            .withOpacity(0.08),
                                      ),
                                      SizedBox(
                                        width: 230.w,
                                      ),
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: _check,
                                            onChanged: (val) {
                                              setState(() {
                                                _check = !_check;
                                              });
                                            },
                                          ),
                                          TextfieldHeader(
                                              'Save Instructor For Future Use')
                                        ],
                                      ),
                                      SizedBox(
                                        width: 40.w,
                                      ),
                                      InstructorButton(
                                        'Next',
                                        AppColors.insane_button,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.w),
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Your Guide to the Pharmaceutical Industry',
                                        style: TextStyle(
                                          fontFamily: 'SF Pro',
                                          fontSize: 28,
                                          color: const Color(0xff1b3950),
                                          fontWeight: FontWeight.w600,
                                          height: 0.7142857142857143,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.left,
                                      ),
                                      TextfieldHeader(
                                          'Learn about the pharma industry quickly - current trends, medicines, healthcare, pharmacy markets & major developments.'),
                                      Row(
                                        children: [
                                          CreatePostIdentity(
                                              FontAwesomeIcons.user,
                                              'Created by: Suhail'),
                                          CreatePostIdentity(
                                              FontAwesomeIcons.globe,
                                              'ENGLSIH'),
                                          CreatePostIdentity(
                                              FontAwesomeIcons.calendar,
                                              'March 2021'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40.h,
                                      ),
                                      Container(
                                        height: 235.h,
                                        decoration: CardBox(),
                                        child: Padding(
                                          padding: EdgeInsets.all(20.w),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ReviewHeading(
                                                  'What you’ll learn'),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  LearnCard(context,
                                                      'Learn essential facts about medicines and the structure of the pharmaceutical industry around the world'),
                                                  LearnCard(context,
                                                      'Learn essential facts about medicines and the structure of the pharmaceutical industry around the world'),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  LearnCard(context,
                                                      'Learn essential facts about medicines and the structure of the pharmaceutical industry around the world'),
                                                  LearnCard(context,
                                                      'Learn essential facts about medicines and the structure of the pharmaceutical industry around the world'),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  LearnCard(context,
                                                      'Learn essential facts about medicines and the structure of the pharmaceutical industry around the world'),
                                                  LearnCard(context,
                                                      'Learn essential facts about medicines and the structure of the pharmaceutical industry around the world'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Container(
                                        height: 422.h,
                                        decoration: CardBox(),
                                        child: Padding(
                                          padding: EdgeInsets.all(20.w),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 20.h, bottom: 20.h),
                                                child: ReviewHeading(
                                                    'Description'),
                                              ),
                                              ReviewDescription(
                                                  'hugely rewarding professionally, personally and financially! There are tremendous opportunities for those that are able to develop their expertise and work closely with the pharma industry.\n\nBy the end of this course you will be able to talk confidently about the pharmaceutical industry during a presentation, in an interview, with co-workers, with customers or in general conversation with friends.\n\nPhil Yates has been working with the global pharmaceutical industry for over 30 years. He is an Associate Member of the Healthcare Communications Association, an Advisory Board Member of AllaboutMedicalSales and an author on training matters for Pharmafocus and Pf magazines and a judge for the Pf Awards. \n\n'),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 15.h, bottom: 20.h),
                                                child: Text(
                                                  'After taking this course you will:',
                                                  style: TextStyle(
                                                    fontFamily: 'SF Pro',
                                                    fontSize: 14.sp,
                                                    color: AppColors
                                                        .insane_primary,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.42,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  AngelIcon(),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  ReviewDescription(
                                                      'Be able to explain the structure and function of the global pharmaceutical industry')
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  AngelIcon(),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  ReviewDescription(
                                                      'Be able to explain the structure and function of the global pharmaceutical industry')
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  AngelIcon(),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  ReviewDescription(
                                                      'Be able to explain the structure and function of the global pharmaceutical industry')
                                                ],
                                              ),
                                              SizedBox(height: 10.h),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  AngelIcon(),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  ReviewDescription(
                                                      'Be able to explain the structure and function of the global pharmaceutical industry')
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ReviewHeading('Course content'),
                                          Text(
                                            '8 sections • 14 lectures • 42m total length',
                                            style: TextStyle(
                                              fontFamily: 'SF Pro',
                                              fontSize: 12.sp,
                                              color: AppColors.insane_primary,
                                              height: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      CourseCardReview(
                                        'Part 1: An Introduction to the Global Pharma Industry',
                                        '2 lectures',
                                        '6 min',
                                      ),
                                      Container(
                                        height: isClick ? 48.h : 178.h,
                                        decoration: CardBox(),
                                        child: isClick
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15.w, right: 15.w),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              isClick =
                                                                  !isClick;
                                                            });
                                                          },
                                                          child: Container(
                                                            height: 23,
                                                            width: 23,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              //borderRadius: BorderRadius.all(Radius.elliptical(999, 999)),
                                                              color: Color(
                                                                  0xffe7edf4),
                                                            ),
                                                            child: Center(
                                                                child: FaIcon(
                                                              isClick
                                                                  ? FontAwesomeIcons
                                                                      .chevronDown
                                                                  : FontAwesomeIcons
                                                                      .chevronUp,
                                                              size: 12.w,
                                                              color: AppColors
                                                                  .insane_primary,
                                                            )),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 15.w,
                                                        ),
                                                        Text(
                                                          'Part 2: An Introduction to the Global Pharma Industry',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'SF Pro',
                                                            fontSize: 14.sp,
                                                            color: AppColors
                                                                .insane_primary,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            // height: 1.4285714285714286,
                                                          ),
                                                          //textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .folder,
                                                              size: 13.w,
                                                              color: AppColors
                                                                  .insane_primary,
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            RegularText(
                                                                '2 lectures'),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 15.w,
                                                        ),
                                                        Row(
                                                          children: [
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .times,
                                                              size: 13.w,
                                                              color: AppColors
                                                                  .insane_primary,
                                                            ),
                                                            SizedBox(
                                                              width: 5.w,
                                                            ),
                                                            RegularText(
                                                                '6 min'),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )
                                            : ClickableCourseCard(
                                                'What’s happening in Pharma markets?',
                                                'Preview',
                                                '4:15',
                                                'How do regions differ?',
                                                'Preview',
                                                '4:15',
                                                'Reinforce your knowledge!',
                                                '5 questions'),
                                      ),
                                      CourseCardReview(
                                        'Part 3: An Introduction to the Global Pharma Industry',
                                        '2 lectures',
                                        '6 min',
                                      ),
                                      CourseCardReview(
                                        'Part 4: An Introduction to the Global Pharma Industry',
                                        '2 lectures',
                                        '6 min',
                                      ),
                                      CourseCardReview(
                                        'Part 5: An Introduction to the Global Pharma Industry',
                                        '2 lectures',
                                        '6 min',
                                      ),
                                      CourseCardReview(
                                        'Part 6: An Introduction to the Global Pharma Industry',
                                        '2 lectures',
                                        '6 min',
                                      ),
                                      CourseCardReview(
                                        'Part 7: An Introduction to the Global Pharma Industry',
                                        '2 lectures',
                                        '6 min',
                                      ),
                                      CourseCardReview(
                                        'Part 8: An Introduction to the Global Pharma Industry',
                                        '2 lectures',
                                        '6 min',
                                      ),
                                      Container(
                                        height: 250.h,
                                        decoration: CardBox(),
                                        child: Padding(
                                          padding: EdgeInsets.all(20.w),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 10.h, bottom: 10.h),
                                                child:
                                                    ReviewHeading('Instructor'),
                                              ),
                                              Divider(
                                                height: 1.h,
                                                color: Color(0xffE7EDF4),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              // Adobe XD layer: 'young-student-woman…' (shape)
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 39,
                                                    width: 39,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.asset(
                                                      'assets/images/instructor.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 15.w,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Phil Yates',
                                                        style: TextStyle(
                                                          fontFamily: 'SF Pro',
                                                          fontSize: 16.sp,
                                                          color: AppColors
                                                              .insane_primary,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.25,
                                                        ),
                                                      ),
                                                      RegularText(
                                                          'Professional Trainer, Facilitator & Coach')
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              Flexible(
                                                child: Column(
                                                  children: [
                                                    RegularText(
                                                        "Phil Yates is an accomplished presenter, trainer, facilitator and coach who has acquired a reputation for delivering training of the highest quality. Phil is Managing Director of Coachwise Consultants Ltd. and he has worked with the pharmaceutical industry for over 30 years.With a degree in Biological Sciences and a Postgraduate Diploma in Education, Phil started teaching Biology & Physics in the UK before joining the pharmaceutical industry within which he held roles within sales, marketing, training and management."),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 25.w,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 560.h,
                                    decoration: CardBox(),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.r),
                                              topRight: Radius.circular(4.r),
                                            ),
                                            gradient: LinearGradient(
                                              begin: Alignment(-1.32, -1.62),
                                              end: Alignment(1.64, 1.79),
                                              colors: [
                                                Color(0x95000000),
                                                Color(0x9500599f)
                                              ],
                                              stops: [0.0, 1.0],
                                            ),
                                          ),
                                          child: Image.asset(
                                            'assets/images/review.png',
                                            fit: BoxFit.cover,
                                            height: 230.h,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20.w),
                                          child: Text(
                                            '\$590.00',
                                            style: TextStyle(
                                              fontFamily: 'SF Pro',
                                              fontSize: 28,
                                              color: const Color(0xff1b3950),
                                              fontWeight: FontWeight.w700,
                                              height: 0.7142857142857143,
                                            ),
                                            // textHeightBehavior: TextHeightBehavior(
                                            //     applyHeightToFirstAscent: false),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20.w),
                                          child: Text(
                                            'This course includes:',
                                            style: TextStyle(
                                              fontFamily: 'SF Pro',
                                              fontSize: 17,
                                              color: const Color(0xff1b3950),
                                              fontWeight: FontWeight.w600,
                                              height: 1.17,
                                            ),
                                            // textHeightBehavior: TextHeightBehavior(
                                            //     applyHeightToFirstAscent: false),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        CourseIncludes(FontAwesomeIcons.tv,
                                            '44 hours on-demand video'),
                                        CourseIncludes(FontAwesomeIcons.folder,
                                            '73 articles'),
                                        CourseIncludes(
                                            FontAwesomeIcons.download,
                                            '38 downloadable resources'),
                                        CourseIncludes(
                                            FontAwesomeIcons.infinity,
                                            'Full lifetime access'),
                                        CourseIncludes(FontAwesomeIcons.phone,
                                            'Full lifetime access'),
                                        CourseIncludes(
                                            FontAwesomeIcons.certificate,
                                            'Certificate of completion'),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Reviews
              ],
            ),
          )),
    );
  }
}
