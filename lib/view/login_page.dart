import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/utils/constants.dart';
import 'package:my_app/utils/styles.dart';
import 'package:my_app/view/widgets/spacing_widgets.dart';

import '../controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: MyappSpacingWidgets.mediumPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EmailPasswordWidget(),
          MyappSpacingWidgets.smallSpacing,
          ElevatedButton(
            onPressed: loginController.onPressedLoginButton,
            child: const Padding(
              padding: MyappSpacingWidgets.mediumPadding,
              child: Text(
                Constants.loginButtonText,
                style: AppStyles.appBarTextStyle,
              ),
            ),
          ),
          MyappSpacingWidgets.smallSpacing,
          TextButton(
              onPressed: () {},
              child: const Text(
                Constants.forgotPassword,
              )),
        ],
      ),
    ));
  }
}

class EmailPasswordWidget extends StatelessWidget {
  EmailPasswordWidget({Key? key}) : super(key: key);
  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: loginController.emailController,
          decoration: const InputDecoration(
              hintText: Constants.emailHintText,
              label: Text(Constants.emailHintText)),
        ),
        MyappSpacingWidgets.smallSpacing,
        TextField(
          controller: loginController.passwordController,
          decoration: const InputDecoration(
            hintText: Constants.passwordHintText,
            label: Text(Constants.passwordHintText),
          ),
          obscureText: true,
        ),
      ],
    );
  }
}
