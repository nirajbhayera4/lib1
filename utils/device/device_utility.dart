import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:get/get.dart';

class Tutils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isPotraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  static void fullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }

  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context!).size.width;
  }

  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }
  static double getBottomNavigationBarHeight(){
    return kBottomNavigationBarHeight;

  }
  static double getAppBarHeight(){
    return kToolbarHeight;
  }
  static double getKeyboardHeight(){
    final viewInsets=MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;

  }
  static Future<bool>isKeyboardVisible() async{
    final viewInsets=View.of(Get.context!).viewInsets;
    return viewInsets.bottom >0;

  }
  static Future<bool> isPhysicalDevice()async{
    return defaultTargetPlatform==TargetPlatform.android || defaultTargetPlatform==TargetPlatform.iOS;
  }
  static void vibrate(Duration duration){
    HapticFeedback.vibrate();
    Future.delayed(duration,()=> HapticFeedback.vibrate());
  }
  static Future<void> setPreferedOrientations(List<DeviceOrientation> orientations)async{
    await SystemChrome.setPreferredOrientations(orientations);

  }
  static void hideStatusBar(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: []);
  }
  static Future<bool> hasInternetConnection()async{
    try{
      final result=await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch(_){
      return false;
    }
  }
  static bool isIOS(){
    return Platform.isIOS;
  }
  static bool isAndroid(){
    return Platform.isAndroid;
  }
  static void launchUrl(String url)async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }
    else{
      throw 'could not launch $url';
    }

  }
}
