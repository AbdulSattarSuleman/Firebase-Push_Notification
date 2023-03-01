import 'package:ecommerce_app_ui/utils/color_manager.dart';
import 'package:flutter/widgets.dart';

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
}
