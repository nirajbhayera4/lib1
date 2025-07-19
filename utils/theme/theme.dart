import 'package:flutter/material.dart';
import 'custom_themes/appBarTheme.dart';
import 'custom_themes/bottomTheme.dart';
import 'custom_themes/checkboxTheme.dart';
import 'custom_themes/outlineButtonTheme.dart';
import 'custom_themes/text_theme.dart';
import 'custom_themes/elevatedbuttonTheme.dart';
import 'custom_themes/textfieldTheme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightcheckTheme,
    bottomSheetTheme: TBottomTheme.lightBottomTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightoutlineButtonTheme,
    inputDecorationTheme: TTextfieldTheme.lightTextFieldTheme,

  );
  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkcheckTheme,
    bottomSheetTheme: TBottomTheme.darkBottomTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkoutlineButtonTheme,
    inputDecorationTheme: TTextfieldTheme.darkTextFieldTheme,

  );



}