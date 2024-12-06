import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = const MediaQueryData();
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double defaultSize = 0;
  static Orientation orientation = Orientation.landscape;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight (double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the lavout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

double gph(double value) {return getProportionateScreenHeight(value);}
double gpw(double value) {return getProportionateScreenWidth(value);}



// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputwidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the lavout width that designer use
  return (inputwidth / 375.0) * screenWidth;
}