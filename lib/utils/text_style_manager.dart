import 'package:ecommerce_app_ui/utils/color_manager.dart';
import 'package:flutter/material.dart';

class TextStyleManager {
  static TextStyle productTitle = TextStyle(
    color: ColorManager.primaryColor,
    fontSize: 18,
    fontFamily: 'Railway',
  );
  static TextStyle priceStyle = TextStyle(
    color: ColorManager.greColor,
    fontSize: 15,
    fontFamily: 'Open Sans',
  );
  static TextStyle darkHead = TextStyle(
      color: ColorManager.primaryColor, fontSize: 16, letterSpacing: 1);
  static TextStyle darkTextButton = TextStyle(
      color: ColorManager.primaryColor, fontSize: 14, letterSpacing: 1);
  static TextStyle darkHeadWhite =
      const TextStyle(color: Colors.white, fontSize: 16, letterSpacing: 1);
  static TextStyle darkTextWhiteButton =
      const TextStyle(color: Colors.white, fontSize: 14, letterSpacing: 1);
  // White Button Text
  static TextStyle whiteText = const TextStyle(
    color: Colors.white,
    fontSize: 18,
    letterSpacing: 0,
    fontFamily: 'Railway',
  );
  // Tab Text Style
  static TextStyle tabText =
      const TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
}
