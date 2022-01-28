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
      home: MotionTabBarPage(),
      // home: FancyNavBarPage(),
      // home: GoogleNavBarPage(),
    );
  }
}
