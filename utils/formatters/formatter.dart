import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tformatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phonenumber) {
    if (phonenumber.length == 10) {
      return '(${phonenumber.substring(0, 3)}) ${phonenumber.substring(3, 6)} ${phonenumber.substring(6)}';
    } else if (phonenumber.length == 11) {
      return '(${phonenumber.substring(0, 4)}) ${phonenumber.substring(4, 7)} ${phonenumber.substring(7)}';
    }
    return phonenumber;
  }

  // not fully tested
  static String internationalFormatPhoneNumber(String phonenumber) {
    // remove any non digit character from the phone number
    var digitsOnly = phonenumber.replaceAll(RegExp(r'\D'), '');

    // extract the couuntyCode from the digitsonly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitsOnly.length) {
      int grouplength = 2;
      if (i == 0 && countryCode == '+1') {
        grouplength = 3;
      }
      int end = i + grouplength;
      formattedNumber.write(digitsOnly.substring(i, end));
      if (end < digitsOnly.length) {
        formattedNumber.write('');
      }
      i = end;
    }
    return formattedNumber.toString();
  }
}
