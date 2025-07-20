import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/constants/size.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helperfunctions/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
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

          // Skip button on top right

          // Dot navigation SmoothPageIndicator

          // circular button
        ],
      ),
    );
  }
}

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
        children: [
          // Animation section
          SizedBox(
            width: THelperFunctions.screenWidth(context) * 0.8,
            height: THelperFunctions.screenHeight(context) * 0.45,
            child: Lottie.asset(image),
          ),
          const SizedBox(height: 150),

          // Title
          Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headlineMedium,
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 16),

          // Subtitle (optional)
          Text(
            subTitle,
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headlineMedium,
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
