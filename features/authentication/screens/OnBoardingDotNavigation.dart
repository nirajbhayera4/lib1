import 'package:ecommerceapp/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helperfunctions/helper_functions.dart';
class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;
    final dark=THelperFunctions.isDarkMode(context);
    return Positioned(bottom: Tutils.getBottomNavigationBarHeight()+25,
      left: Tsize.defaultSpace,
      child: SmoothPageIndicator(controller: controller.pageController,onDotClicked: controller.dotNavigationClick, count: 3,effect: ExpandingDotsEffect(activeDotColor: dark? Tcolor.white:Tcolor.dark,dotHeight: 6),),
    );
  }
}