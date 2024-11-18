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

        displaySmall: getMediumTextStyle(fontSize: FontSize.s20.sp, color: ColorManager.secondaryTextColor),
        titleLarge: getBoldTextStyle(color: ColorManager.primary, fontSize: FontSize.s32.sp),
        bodyLarge: getBoldTextStyle(color: ColorManager.black, fontSize: FontSize.s32.sp),
        labelSmall: getRegularTextStyle(color: ColorManager.secondaryTextColor, fontSize: FontSize.s16.sp),
        titleSmall: getSemiBoldTextStyle(fontSize: FontSize.s16.sp, color: ColorManager.white),
        bodySmall: getSemiBoldTextStyle(color: ColorManager.primary, fontSize: FontSize.s16.sp),
        displayMedium: getBoldTextStyle(color: ColorManager.black, fontSize: FontSize.s24.sp),
        headlineMedium: getRegularTextStyle(color: ColorManager.black, fontSize: FontSize.s16.sp) ,
        bodyMedium: getMediumTextStyle(color: ColorManager.black, fontSize: FontSize.s16.sp),
        headlineSmall: getRegularTextStyle(color: ColorManager.secondaryTextColor,fontSize: FontSize.s14.sp),
        labelMedium: getRegularTextStyle(color: ColorManager.secondaryTextColor, fontSize: FontSize.s12.sp)


          ),
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
