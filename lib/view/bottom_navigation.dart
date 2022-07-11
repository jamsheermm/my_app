import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bottom_navigation_controller.dart';
import '../utils/constants.dart';
import '../utils/styles.dart';
import 'animations_page.dart';
import 'home_page.dart';
import 'settings_page.dart';

class MyappBottomNavigation extends StatelessWidget {
  MyappBottomNavigation({Key? key}) : super(key: key);
  final bottomNavigationController = Get.put(BottomNavigationController());
  final List<Widget> tabs = [
    const HomePage(),
    const AnimationsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Constants.appbarTitle,
          style: AppStyles.appBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() =>
            tabs.elementAt(bottomNavigationController.currentTabIndex.value)),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: Constants.home, icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(
                label: Constants.animations,
                icon: Icon(Icons.animation_rounded)),
            BottomNavigationBarItem(
                label: Constants.settings, icon: Icon(CupertinoIcons.settings)),
          ],
          onTap: bottomNavigationController.onTapped,
          currentIndex: bottomNavigationController.currentTabIndex.value,
          // showSelectedLabels: true,
        ),
      ),
    );
  }
}
