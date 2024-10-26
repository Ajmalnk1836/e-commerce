import 'package:flutter/widgets.dart';

class AppMediaQuery {
  ///calculates desired width based on the specified percentage.
  static double screenWidthRatio(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * percentage / 100;
  }

  ///calculates desired height based on the specified percentage.
  static double screenHeightRatio(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.height * percentage / 100;
  }

  ///get screen full width
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  ///get screen full height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
