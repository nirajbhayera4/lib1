import 'package:flutter/material.dart';
import 'package:flutterprojects/utils/theme/theme.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/onboarding.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.dark,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }
}
