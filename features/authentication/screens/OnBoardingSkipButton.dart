import 'package:ecommerceapp/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/size.dart';
import '../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Tutils.getAppBarHeight(),
      right: Tsize.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
          // You can navigate or do anything here
        },
        child: const Text("Skip"),
      ),
    );
  }
}