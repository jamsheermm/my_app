import 'package:flutter/material.dart';
import 'package:my_app/model/user.dart';
import 'package:my_app/utils/constants.dart';
import 'package:my_app/utils/styles.dart';

import '../utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 25,
      itemBuilder: (context, index) {
        final user = User(name: "User $index", email: "email$index@email.com");
        return ListTile(
          title: Text(
            user.name!,
            style: AppStyles.titleStyle,
          ),
          subtitle: Text(user.email ?? Constants.emailNotFoundMessage),
          leading: const CircleAvatar(
            radius: Constants.profileImageSize,
            backgroundColor: AppColors.secondaryColor,
            child: Icon(
              Icons.person,
              size: Constants.profileImageSize,
            ),
          ),
        );
      },
    ));
  }
}
