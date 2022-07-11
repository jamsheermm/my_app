import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/utils/colors.dart';
import 'package:my_app/utils/constants.dart';

import '../view/bottom_navigation.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void onPressedLoginButton() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      Get.offAll(MyappBottomNavigation());
    } else {
      Get.snackbar(
          Constants.loginPageErrorTitle, Constants.loginPageErrorMessage,
          backgroundColor: AppColors.secondaryColor);
    }
  }
}
