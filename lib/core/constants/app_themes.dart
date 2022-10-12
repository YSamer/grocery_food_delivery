import 'package:flutter/material.dart';
import 'package:grocery_food_delivery/core/constants/app_colors.dart';

class AppThemes {
  static ThemeData theme = ThemeData(
    primaryColor: AppColors.primaryColor,
    textTheme: textTheme,
  );
  static ThemeData darkTheme = ThemeData();

  static TextTheme textTheme = TextTheme(
    headline1: AppTexts.headline1,
    headline2: AppTexts.headline2,
    headline3: AppTexts.headline3,
    bodyText1: AppTexts.bodyText1,
  );
}

class AppTexts {
  static TextStyle headline1 = const TextStyle(
    fontSize: 20,
    color: AppColors.whitePrimaryColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle headline2 = const TextStyle(
    color: AppColors.text2Color,
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headline3 = const TextStyle(
    color: AppColors.text3Color,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodyText1 = const TextStyle(
    color: AppColors.text4Color,
    fontSize: 15,
  );
}
