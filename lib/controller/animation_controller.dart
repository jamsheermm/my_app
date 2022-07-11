import 'package:get/get.dart';

class MyappAnimationController extends GetxController {
  RxDouble smallSize = 100.0.obs;
  RxDouble largeSize = 200.0.obs;
  RxDouble currentSize = 100.0.obs;
  RxBool isSmall = true.obs;

  void onTappedContainer() {
    isSmall.value = !isSmall.value;
  }
}
