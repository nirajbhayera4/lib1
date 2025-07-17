import 'package:flutter/material.dart';
class Tvalidator{
  static String? validateEmail(String ?value){
    if(value ==null || value.isEmpty){
      return 'Email is required';
    }
    // regular expression to validate the email
    final emailRegExp=RegExp(r'^[\w-\.] +@([ \w-] + \.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address';
    }
    return null;

  }
  static String? validatePassword(String ? value){
    if(value ==null || value.isEmpty){
      return 'password is required';
    }
    // check for the min password length
    if(value.length <6){
      return 'password must be atleast 6 characters long.';
    }
    // check for the uppercase letters
    if(!value.contains(RegExp(r'^[A-Z]'))){
      return 'password must contain at least one uppercase letter';
    }
    if(!value.contains(RegExp(r'^[0-9]'))){
      return 'password must contain at least one number';
    }
    if(!value.contains(RegExp(r'^[!@#$%^&*(),.?":{}|<>]'))){
      return 'password must contain at least one special character';
    }
    return null;

  }
  static String? validatephoneNumber(String ?value){
    if(value ==null || value.isEmpty){
      return 'phone number is required';
  }
    final phoneRegExp=RegExp(r'^\d{10}$');
    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format(10 digits required)';

  }
    return null;
  }
}