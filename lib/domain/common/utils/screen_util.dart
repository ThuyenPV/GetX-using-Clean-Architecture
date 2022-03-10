import 'package:flutter/material.dart';

class ScreenUtil {
  static double screenHeight({
    required BuildContext context,
  }) {
    return MediaQuery.of(context).size.height;
  }
}
