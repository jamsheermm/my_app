import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';

class DetailedView extends StatelessWidget {
  const DetailedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: Constants.heroAnimationTag,
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: Constants.largeSize,
                width: Constants.largeSize,
                decoration: const BoxDecoration(
                    color: AppColors.primaryColor, shape: BoxShape.circle),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
