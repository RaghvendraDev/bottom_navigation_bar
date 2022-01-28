import 'package:bottom_navigation_bar_codealgo/controller/bottom_navigation_controller.dart';
import 'package:bottom_navigation_bar_codealgo/view/home_page.dart';
import 'package:bottom_navigation_bar_codealgo/view/profile_page.dart';
import 'package:bottom_navigation_bar_codealgo/view/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_tab_bar/motiontabbar.dart';

class MotionTabBarPage extends StatelessWidget {
  MotionTabBarPage({Key? key}) : super(key: key);

  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());

  final screens = [
    HomePage(),
    ProfilePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: bottomNavigationController.selectedIndex.value,
            children: screens,
          )),
      bottomNavigationBar: MotionTabBar(
        labels: ["Home", "Profile", "Setting"],
        initialSelectedTab: "Profile",
        tabIconColor: Colors.green,
        tabSelectedColor: Colors.purple,
        icons: [Icons.home, Icons.person, Icons.settings],
        textStyle: TextStyle(color: Colors.purple),
        onTabItemSelected: (index) {
          bottomNavigationController.changeIndex(index);
        },
      ),
    );
  }
}
