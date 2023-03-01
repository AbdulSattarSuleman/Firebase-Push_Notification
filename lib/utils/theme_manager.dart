import 'package:ecommerce_app_ui/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeManager {
  ThemeData applicationTheme() {
    return ThemeData(
        fontFamily: 'Railway',
        primaryColor: ColorManager.primaryColor,
        appBarTheme: AppBarTheme(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ColorManager.primaryColor,
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent)));
  }
}
