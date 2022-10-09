import 'package:final_hackathon/views/Add%20To%20Cart/add_to_cart.dart';
import 'package:final_hackathon/views/Details%20Course/details_course.dart';
import 'package:final_hackathon/views/Home/home_screens.dart';
import 'package:final_hackathon/views/lesson/cont_lesson.dart';
import 'package:final_hackathon/views/login_screens/login_screen.dart';
import 'package:final_hackathon/views/onboarding_screens/onboarding_screens.dart';
import 'package:final_hackathon/views/profile/profile_screens.dart';
import 'package:final_hackathon/views/profile_mentor/profile_mentor.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      debugShowCheckedModeBanner: false,
      title: 'Final Hackathon Flutter Jawan Pakistan',
      theme: ThemeData(
        primaryColor: Colors.white,
    ),
    home: const OnBoardingScreens(),
    );
  }
}

