import 'package:flutter/material.dart';
import 'package:my_app/utils/colors.dart';

import 'constants.dart';

class AppStyles {
  static const appBarTextStyle = TextStyle(
      fontSize: Constants.appBarTextSize, fontWeight: FontWeight.bold);

  static const titleStyle =
      TextStyle(fontSize: Constants.titleTextSize, color: AppColors.titleColor);

  static const subTitleStyle = TextStyle(
      fontSize: Constants.subTitleTextSize, color: AppColors.subtitleColor);
}
