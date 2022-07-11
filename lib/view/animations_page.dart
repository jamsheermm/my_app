import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/utils/colors.dart';
import 'package:my_app/utils/constants.dart';

import '../controller/animation_controller.dart';
import 'animation_detailed_view.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  @override
  State<AnimationsPage> createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MiddleAnimationWidget(),
          Center(
            child: Hero(
              tag: Constants.heroAnimationTag,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DetailedView();
                  }));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  height: Constants.smallSize,
                  width: Constants.smallSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MiddleAnimationWidget extends StatelessWidget {
  final MyappAnimationController animationController =
      Get.put(MyappAnimationController());

  MiddleAnimationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: animationController.onTappedContainer,
        child: Obx(
          () => AnimatedContainer(
            duration: const Duration(seconds: Constants.animationDuration),
            curve: Curves.easeIn,
            width: animationController.isSmall.value
                ? animationController.smallSize.value
                : animationController.largeSize.value,
            height: animationController.isSmall.value
                ? animationController.smallSize.value
                : animationController.largeSize.value,
            child: animationController.isSmall.value
                ? smallWidget()
                : largeWidget(),
          ),
        ),
      );

  Widget largeWidget() => Container(
          decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.secondaryColor,
      ));

  Widget smallWidget() => Container(
          decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.secondaryColor,
      ));
}
