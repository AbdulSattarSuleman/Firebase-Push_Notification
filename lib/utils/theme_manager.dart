import 'package:ecommerce_app_ui/utils/color_manager.dart';
import 'package:ecommerce_app_ui/utils/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeManager {
  ThemeData applicationTheme() {
    return ThemeData(
        fontFamily: 'Railway',
        primaryColor: ColorManager.primaryColor,
        // App bar
        appBarTheme: AppBarTheme(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ColorManager.primaryColor,
            systemOverlayStyle:
                const SystemUiOverlayStyle(statusBarColor: Colors.transparent)),

        // Outline Button
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: BorderSide(width: 1, color: ColorManager.primaryColor),
            textStyle: TextStyleManager.productTitle,
            foregroundColor: ColorManager.primaryColor,
            shape: const StadiumBorder(),
            // padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
          ),
        ),
        // ElevatedButton
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.primaryColor,
            shape: const StadiumBorder(),
            textStyle: TextStyleManager.whiteText,
          ),
        ));
  }
}
