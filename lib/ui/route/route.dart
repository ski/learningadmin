import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'package:isence/ui/views/auth/loginscreen.dart';
import 'package:isence/ui/views/tab_controller/courses/addnew_courses.dart';
import 'package:isence/ui/views/tab_controller/dashboard/dashboard.dart';
import 'package:isence/ui/views/tab_controller/tab_controller_screen.dart';



// Route Names
const String login = "/Login-Screen";
const String tab_controller_screen = "/Tab-Controller-Screen";
const String dashboard = "/Dashboard";
const String courses = "/Courses";




// Control our page route flow
List<GetPage> getPages = [
  GetPage(
    name: login,
    page: () => LoginScreen(),
    transition: Transition.cupertino,
  ),
 
  GetPage(
    name: tab_controller_screen,
    page: () => TabControllerScreen(),
  ),
  GetPage(
    name: dashboard,
    page: () => Dashboard(),
  ),
   GetPage(
    name: courses,
    page: () => AddNewCources(),
  ),
  
];