import 'package:flutter/cupertino.dart';

class SizeConfig {
  static double? screenWidth; 
  static double? screenHeight; 

  void init(BuildContext context) {
    screenWidth = context.size!.width;
    screenHeight = context.size!.height;
  }
}
