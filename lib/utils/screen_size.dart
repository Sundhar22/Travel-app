import 'package:flutter/material.dart';

class ScreenSize {
  static late MediaQueryData mediaQuery;
  static late double _screenWidth;
  static late double _screenHeight;

  void init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    _screenHeight = mediaQuery.size.height;
    _screenWidth = mediaQuery.size.width;
  }


}
double screenHeight(double input) {
  return (input / 812.0) *ScreenSize._screenHeight;
}

double screenWidth(double input) {
  return (input / 375.0) * ScreenSize._screenWidth;
}
