import 'package:bottom_navigation_bar_codealgo/controller/bottom_navigation_controller.dart';
import 'package:bottom_navigation_bar_codealgo/view/home_page.dart';
import 'package:bottom_navigation_bar_codealgo/view/profile_page.dart';
import 'package:bottom_navigation_bar_codealgo/view/setting_page.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FancyNavBarPage extends StatelessWidget {
  FancyNavBarPage({Key? key}) : super(key: key);

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
      bottomNavigationBar: FancyBottomBar(
        items: [
          FancyItem(
            textColor: Colors.green,
            title: "Home",
            icon: Icon(Icons.home),
          ),
          FancyItem(
            textColor: Colors.purple,
            title: "Profile",
            icon: Icon(Icons.person),
          ),
          FancyItem(
            textColor: Colors.orange,
            title: "Setting",
            icon: Icon(Icons.settings),
          ),
        ],
        type: FancyType.FancyV2,
        onItemSelected: (index) {
          bottomNavigationController.changeIndex(index);
        },
        // selectedIndex: bottomNavigationController.selectedIndex.value,
      ),
    );
  }
}
