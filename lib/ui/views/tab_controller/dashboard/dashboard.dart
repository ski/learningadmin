import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/widgets/categories_card.dart';
import 'package:isence/ui/widgets/chapters_number.dart';
import 'package:isence/ui/widgets/dashboard_graph.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String dropdownValue = 'Suhail Manzoor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scafFoldBackground,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: 244.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.insane_button,
                    border: Border.all(color: Color(0xff99BDD9)),
                    borderRadius: BorderRadius.all(Radius.circular(4.r))),
                child: Column(
                  children: [
                    DashboardTopbar(context, (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    }, dropdownValue),
                    Padding(
                      padding: EdgeInsets.all(20.w),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Welcome Suhail',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro',
                                      fontSize: 23.sp,
                                      color: AppColors.insane_white,
                                      fontWeight: FontWeight.w700,
                                      height: 2.5.h,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'Take a look at the latest update for your dashboard',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro',
                                      fontSize: 14.sp,
                                      color: AppColors.insane_white,
                                      height: 1.8.h,
                                    ),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                              Container(
                                height: 40.h,
                                width: 245.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.r),
                                  color:
                                      AppColors.insane_white.withOpacity(0.05),
                                  border: Border.all(
                                      width: 1.0, color: Color(0x0d707070)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.history,
                                      color: AppColors.insane_white,
                                      size: 16.w,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'Last Update: 4 Hours ago',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro',
                                        fontSize: 14.sp,
                                        color: AppColors.insane_white,
                                        fontWeight: FontWeight.w500,
                                        //  height: 5.85.h,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: -60.h,
                left: 20.w,
                right: 20.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoriesCard(
                        FontAwesomeIcons.userGraduate, '34245', 'Students'),
                    CategoriesCard(FontAwesomeIcons.folder, '245', 'Catalogue'),
                    CategoriesCard(FontAwesomeIcons.bookOpen, '234', 'Courses'),
                    CategoriesCard(
                        FontAwesomeIcons.building, '3456', 'Business'),
                    CategoriesCard(
                        FontAwesomeIcons.userTie, '643', 'Instructor'),
                  ],
                ),
              )
            ]),
            Padding(
              padding: EdgeInsets.only(
                  top: 80.h, left: 20.w, right: 20.w, bottom: 20.w),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20.w, bottom: 20.w),
                          child: Container(
                            height: 305.h,
                            width: double.infinity,
                            // width: 650.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: Color(0xffFAFBFD),
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Revenue',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro',
                                      fontSize: 16.sp,
                                      color: AppColors.insane_primary,
                                      fontWeight: FontWeight.w600,
                                      height: 1.43,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                              width: double.infinity,
                                              height: 216.h,
                                              child: LineChartSample2())),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 100.h,
                                            width: 171.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x050b1721),
                                                  offset: Offset(0, 5),
                                                  blurRadius: 15,
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15.w),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "\$32,34,000",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16.sp),
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Text(
                                                    "Income",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.sp,
                                                      color: Color(0xFF1B3950),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Container(
                                            height: 100.h,
                                            width: 171.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x050b1721),
                                                  offset: Offset(0, 5),
                                                  blurRadius: 15,
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15.w),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "\$44,000",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16.sp),
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Text(
                                                    "Expense",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.sp,
                                                      color: Color(0xFF1B3950),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.w, bottom: 20.w),
                          child: Container(
                            height: 305.h,
                            // width: 650.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: Color(0xffFAFBFD),
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
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Recent Student',
                                        style: TextStyle(
                                          fontFamily: 'SF Pro',
                                          fontSize: 16.sp,
                                          color: AppColors.insane_primary,
                                          fontWeight: FontWeight.w600,
                                          height: 1.43,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.left,
                                      ),
                                      CardTitle('View All', Color(0xff3e98ff))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          bottom: 10.h,
                                        ),
                                        child: Container(
                                          height: 40.h,
                                          decoration: BoxDecoration(
                                            color: Color(0xfff5f8fb),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BioHeading('Name'),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 36.w),
                                                child: BioHeading('Department'),
                                              ),
                                              BioHeading('Mobile'),
                                              BioHeading('View'),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        //crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          BioDescription('Pankaj Kumar Patel'),
                                          BioDescription('Forensic Medicine'),
                                          BioDescription('+97534 34623'),
                                          Container(
                                              width: 30.w,
                                              height: 20.h,
                                              child: FaIcon(
                                                FontAwesomeIcons.arrowRight,
                                                size: 14,
                                                color: Color(0xff3E98FF),
                                              ))
                                        ],
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
                    flex: 2,
                    child: Container(

                        // width: 420.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Color(0xFFFAFBFD),
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
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Recent Courses',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro',
                                      fontSize: 16.sp,
                                      color: AppColors.insane_primary,
                                      fontWeight: FontWeight.w600,
                                      height: 1.4375,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.left,
                                  ),
                                  CardTitle('View All', Color(0xff3e98ff))
                                ],
                              ),
                              SizedBox(
                                height: 7.w,
                              ),
                              Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: Color(0xfff5f8fb),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CardTitle('Name', AppColors.insane_primary),
                                    CardTitle(
                                        'Chapters', AppColors.insane_primary),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 7.w,
                              ),
                              ChaptersNumber("Nutrition And Dietetics", "21"),
                              ChaptersNumber("General Pathology", "01"),
                              ChaptersNumber(
                                  "Conservative Dentistry And Endodontics",
                                  "23"),
                              ChaptersNumber(
                                  "Fundamentals Of Nursing, First Aid With Applied",
                                  "31"),
                              ChaptersNumber("Physiology", "09"),
                              ChaptersNumber("Sciences And Pharmacology", "20"),
                              ChaptersNumber(
                                  "Pediatric Nursing & Growth & Development",
                                  "11"),
                              ChaptersNumber(
                                  "Quality Control And Standardization", "08"),
                              ChaptersNumber(
                                  "Seminar On National Health Programmes",
                                  "15"),
                              ChaptersNumber("Public Health Nutrition", "10"),
                              ChaptersNumber("description", "16"),
                              ChaptersNumber("Public Health Nutrition", "21"),
                              ChaptersNumber("Physiology", "24"),
                              ChaptersNumber("Introduction", "23"),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget DashboardTopbar(BuildContext context, onchange, dropdownValue) {
  return Container(
    height: 70.h,
    decoration: BoxDecoration(
      color: AppColors.insane_button,
      boxShadow: [
        BoxShadow(
          color: const Color(0x1f000000),
          offset: Offset(0, 0),
          blurRadius: 35,
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.bars,
                size: 15.w,
                color: AppColors.insane_white,
              ),
              SizedBox(
                width: 25.w,
              ),
              Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 17.sp,
                  color: AppColors.insane_white,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.notifications,
                size: 15.w,
                color: AppColors.insane_white,
              ),
              SizedBox(
                width: 25.w,
              ),
              Container(
                  height: 26.h,
                  child: VerticalDivider(color: AppColors.insane_white)),
              SizedBox(
                width: 28.w,
              ),
              Image.asset(
                'assets/images/profile.png',
                height: 38.h,
                width: 38.w,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 14.w,
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: FaIcon(
                  FontAwesomeIcons.caretDown,
                  color: AppColors.insane_white,
                  size: 15.w,
                ),
                iconSize: 24.w,
                elevation: 16,
                hint: Text(
                  'Suhail Manzoor',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                  ),
                ),
                dropdownColor: Colors.green,
                underline: Container(
                  height: 1,
                  color: Colors.transparent,
                ),
                onChanged: onchange,
                items: <String>[
                  'Suhail Manzoor',
                  'Bootleg Bobby',
                  'Karmic Kaching',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Text(
                        value,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.sp,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget CardTitle(String title, Color color) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: 'SF Pro',
      fontSize: 14.sp,
      color: color,
      fontWeight: FontWeight.w500,
      height: 1.64,
    ),
    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
    textAlign: TextAlign.left,
  );
}

Widget BioDescription(String description) {
  return Container(
    height: 36.h,
    child: Text(
      description,
      style: TextStyle(
        fontFamily: 'SF Pro',
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.insane_primary,
        height: 1.64,
      ),
      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
      textAlign: TextAlign.left,
    ),
  );
}

Widget BioHeading(String heading) {
  return Text(
    heading,
    style: TextStyle(
      fontFamily: 'SF Pro',
      fontSize: 14.sp,
      color: AppColors.insane_primary,
      fontWeight: FontWeight.w600,
      height: 1.64,
    ),
    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
    textAlign: TextAlign.left,
  );
}
