import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutterprojects/utils/helperfunctions/helper_functions.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: PageView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                // Animation section
                SizedBox(
                  width: THelperFunctions.screenWidth(context) * 0.8,
                  height: THelperFunctions.screenHeight(context) * 0.45,
                  child: Lottie.asset(
                    'assets/images/shopping cart.json',

                  ),
                ),
                const SizedBox(height: 150),

                // Title
                Text(
                  "Choose your product",
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                    ,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 16),

                // Subtitle (optional)
                Text(
                  "Welcome to the world of Limitless choices - Your perfect product awaits",
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
          ),
        ],
      ),
    );
  }
}
