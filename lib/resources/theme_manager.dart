import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/font_manager.dart';
import 'package:delivery_app/resources/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      scaffoldBackgroundColor: ColorManager.scaffoldBackgroundColor,
      textTheme: TextTheme(
        labelMedium: getRegularTextStyle(color: ColorManager.secondaryTextColor, fontSize: FontSize.s14.sp),
        titleMedium: getSemiBoldTextStyle(color: ColorManager.white,fontSize: FontSize.s14.sp),
        headlineSmall: getSemiBoldTextStyle(color: ColorManager.black, fontSize: FontSize.s24.sp),
        bodySmall: getMediumTextStyle(color: ColorManager.primary, fontSize: FontSize.s14.sp),
        displayMedium: getSemiBoldTextStyle(color: ColorManager.black, fontSize: FontSize.s28.sp),
        titleSmall: getMediumTextStyle(
            fontSize: FontSize.s16.sp, color: ColorManager.white),
        titleLarge: getBoldTextStyle(color: ColorManager.primary, fontSize: FontSize.s32.sp),
        bodyLarge: getBoldTextStyle(color: ColorManager.black, fontSize: FontSize.s32.sp),
          labelSmall: getRegularTextStyle(
              color: ColorManager.secondaryTextColor, fontSize: FontSize.s18.sp),
          displaySmall: getMediumTextStyle(
              fontSize: FontSize.s20.sp, color: ColorManager.secondaryTextColor)));
}
