import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/font_manager.dart';
import 'package:delivery_app/resources/style_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      scaffoldBackgroundColor: ColorManager.scaffoldBackgroundColor,
      textTheme: TextTheme(
        labelMedium: getRegularTextStyle(color: ColorManager.secondaryTextColor, fontSize: FontSize.s14),
        titleMedium: getSemiBoldTextStyle(color: ColorManager.white,fontSize: FontSize.s14),
        headlineSmall: getSemiBoldTextStyle(color: ColorManager.black, fontSize: FontSize.s24),
        bodySmall: getMediumTextStyle(color: ColorManager.primary, fontSize: FontSize.s14),
        displayMedium: getSemiBoldTextStyle(color: ColorManager.black, fontSize: FontSize.s28),
        titleSmall: getMediumTextStyle(
            fontSize: FontSize.s16, color: ColorManager.white),
        titleLarge: getBoldTextStyle(color: ColorManager.primary, fontSize: FontSize.s32),
        bodyLarge: getBoldTextStyle(color: ColorManager.black, fontSize: FontSize.s32),
          labelSmall: getRegularTextStyle(
              color: ColorManager.secondaryTextColor, fontSize: FontSize.s18),
          displaySmall: getMediumTextStyle(
              fontSize: FontSize.s20, color: ColorManager.secondaryTextColor)));
}
