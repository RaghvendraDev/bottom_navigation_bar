import 'package:bottom_navigation_bar_codealgo/controller/bottom_navigation_controller.dart';
import 'package:bottom_navigation_bar_codealgo/view/home_page.dart';
import 'package:bottom_navigation_bar_codealgo/view/profile_page.dart';
import 'package:bottom_navigation_bar_codealgo/view/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationPage extends StatelessWidget {
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  NavigationPage({Key? key}) : super(key: key);

  Color darkblue = const Color(0xff002748);
  Color darkGreen = const Color(0xff007333);
  Color darkPink = const Color(0xffFF35EE);

  final screens = [
    HomePage(),
    const ProfilePage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: bottomNavigationController.selectedIndex.value,
          children: screens,
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
            showSelectedLabels: true,
            // showUnselectedLabels: false,
            onTap: (index) {
              bottomNavigationController.changeIndex(index);
            },
            currentIndex: bottomNavigationController.selectedIndex.value,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: darkGreen,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
                backgroundColor: darkPink,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Setting",
                backgroundColor: darkblue,
              )
            ],
          )),
    );
  }
}
