import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  RxInt currentTabIndex = 0.obs;

  void onTapped(int index) {
    currentTabIndex.value = index;
  }
}
