

import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalDecoratedContainer extends StatelessWidget {
  const GlobalDecoratedContainer({super.key, required this.child, required this.height, this.width});

  final Widget child;
  final double height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(AppPadding.p10.r),
      width:width?? double.infinity,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
            color: ColorManager.socialButtonColor, width: AppSize.s1.w),
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(AppSize.s12.r),
      ),
      child: child,
    );

  }
}
