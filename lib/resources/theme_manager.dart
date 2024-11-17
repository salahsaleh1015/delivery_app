import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/font_manager.dart';
import 'package:delivery_app/resources/style_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData getApplicationTheme(context) {
  return ThemeData(
      scaffoldBackgroundColor: ColorManager.scaffoldBackgroundColor,
      textTheme: TextTheme(
        headlineMedium: getRegularTextStyle(
            color: ColorManager.black, fontSize: FontSize.s16.sp) ,
        labelMedium: getRegularTextStyle(color: ColorManager.secondaryTextColor, fontSize: FontSize.s12.sp),
        titleMedium: getSemiBoldTextStyle(color: ColorManager.white,fontSize: FontSize.s12.sp),
        headlineSmall: getSemiBoldTextStyle(color: ColorManager.black, fontSize: FontSize.s22.sp),
        bodySmall: getMediumTextStyle(color: ColorManager.primary, fontSize: FontSize.s12.sp),
        displayMedium: getSemiBoldTextStyle(color: ColorManager.black, fontSize: FontSize.s24.sp),
        titleSmall: getMediumTextStyle(
            fontSize: FontSize.s14.sp, color: ColorManager.white),
        titleLarge: getBoldTextStyle(color: ColorManager.primary, fontSize: FontSize.s28.sp),
        bodyLarge: getBoldTextStyle(color: ColorManager.black, fontSize: FontSize.s28.sp),
          labelSmall: getRegularTextStyle(
              color: ColorManager.secondaryTextColor, fontSize: FontSize.s12.sp),
          displaySmall: getMediumTextStyle(
              fontSize: FontSize.s18.sp, color: ColorManager.secondaryTextColor)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      unselectedLabelStyle:TextStyle(
        fontSize: FontSize.s14.sp
      ),
      selectedLabelStyle: TextStyle(
          fontSize: FontSize.s14.sp
      ),
      backgroundColor: ColorManager.white,
      selectedItemColor: ColorManager.primary,
      unselectedItemColor: ColorManager.hintColor
    )


  );
}
