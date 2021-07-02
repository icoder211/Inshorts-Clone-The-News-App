// Flutter imports:
import 'package:flutter/cupertino.dart';

class Global {
  static final List<String> lang = [
    "English",
    "हिंदी",
    "मराठी",
    "ಕನ್ನಡ",
  ];

  static height(context) => MediaQuery.of(context).size.height;
  static width(context) => MediaQuery.of(context).size.width;
  static String apikey = "2f175947692c42078d277956d2bbab3e";
}
