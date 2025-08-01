import'package:flutter/material.dart';
class TBottomTheme {
  TBottomTheme._();
  static BottomSheetThemeData lightBottomTheme =BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))
  );
  static BottomSheetThemeData darkBottomTheme =BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: Colors.black,
      modalBackgroundColor: Colors.black,
      constraints: const BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))
  );
  
}