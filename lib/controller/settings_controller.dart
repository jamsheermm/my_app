import 'package:get/get.dart';

class SettingsController extends GetxController {
  RxBool switchTurnedOn = false.obs;

  void onTappedSwitch(bool value) {
    switchTurnedOn.value = value;
  }
}
