import 'package:ecommerceapp/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/size.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helperfunctions/helper_functions.dart';
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Positioned(right :Tsize.defaultSpace,
        bottom: Tutils.getBottomNavigationBarHeight(),

        child: ElevatedButton(onPressed: ()=>OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(shape: CircleBorder()),
            child: const Icon(Icons.arrow_forward_ios,color: Colors.white,)));
  }
}