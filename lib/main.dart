// import 'package:bottom_navigation_bar_codealgo/view/convex_nav_bar.dart';
// import 'package:bottom_navigation_bar_codealgo/view/curved_navigation_bar.dart';
import 'package:bottom_navigation_bar_codealgo/view/fancy_nav_bar.dart';
// import 'package:bottom_navigation_bar_codealgo/view/google_nav_bar.dart';
import 'package:bottom_navigation_bar_codealgo/view/motion_tab_bar.dart';
import 'package:bottom_navigation_bar_codealgo/view/navigation_bar_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavigationPage(),
      // home: MotionTabBarPage(),
      home: FancyNavBarPage(),
      // home: GoogleNavBarPage(),
      // home: ConvexBottomBarPage(),
      // home: CurvedNavigationBarPage(),
    );
  }
}
