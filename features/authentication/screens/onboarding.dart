import 'package:ecommerceapp/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ecommerceapp/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/size.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helperfunctions/helper_functions.dart';
import 'package:get/get.dart';
import 'OnBoardingDotNavigation.dart';
import 'OnBoardingNextButton.dart';
import 'OnBoardingPage.dart';
import 'OnBoardingSkipButton.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // PageView with controller
          PageView(
            controller: controller.pageController,

            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: "Choose your product",
                image: "assets/shopping cart.json",
                subTitle:
                    "Welcome to the world of Limitless choices - Your perfect product awaits",
              ),
              OnBoardingPage(
                title: "Select payment method",
                image: "assets/Money Transfer.json",
                subTitle:
                    "For seamless Transactions, choose your payment path - Your convenience, our priority",
              ),
              OnBoardingPage(
                title: "Deliver at your doorstep",
                image: "assets/Delivery man on a bike.json",
                subTitle:
                    "From our doorstep to yours - Swift, Secure, and Contactless delivery",
              ),
            ],
          ),

          // Skip button
           const OnBoardingSkip(),

          // SmoothPageIndicator
          const OnBoardingDotNavigation(),
          // circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
/*
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Positioned(right :Tsize.defaultSpace,
        bottom: Tutils.getBottomNavigationBarHeight(),

        child: ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(shape: CircleBorder()),
          child: const Icon(Icons.arrow_forward_ios,color: Colors.white,)));
  }
}
*/

/*
class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Positioned(bottom: Tutils.getBottomNavigationBarHeight()+25,
      left: Tsize.defaultSpace,
      child: SmoothPageIndicator(controller: PageController(), count: 3,effect: ExpandingDotsEffect(activeDotColor: dark? Tcolor.white:Tcolor.dark,dotHeight: 6),),
    );
  }
}
*/
/*
class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Tutils.getAppBarHeight(),
      right: Tsize.defaultSpace,
      child: TextButton(
        onPressed: () {
          // You can navigate or do anything here
        },
        child: const Text("Skip"),
      ),
    );
  }
}
*/

/*
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Tsize.defaultSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Lottie animation
          SizedBox(
            width: THelperFunctions.screenWidth(context) * 0.8,
            height: THelperFunctions.screenHeight(context) * 0.45,
            child: Lottie.asset(image),
          ),
          const SizedBox(height: 50),

          // Title
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 16),

          // Subtitle
          Text(
            subTitle,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
*/