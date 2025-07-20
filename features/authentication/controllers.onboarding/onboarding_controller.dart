import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance=> Get.find();


  // variables
  final pageController=PageController();
  Rx<int> currrentPageIndex=0.obs;


void updatePageIndicator(index)=> currrentPageIndex.value = index;
  

void dotNavigationClick(index){
  currrentPageIndex.value=index;
  pageController.jumpTo(index);

}
void nextPage(){
  if(currrentPageIndex.value==2){
    //Get.to(LoginScreen());
  }
  else{
    int page=currrentPageIndex.value +1;
    pageController.jumpToPage(page);
  }

}
void skipPage(){
  currrentPageIndex.value=2;
  pageController.jumpToPage(2);

}
}