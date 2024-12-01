
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class GlobalSecondaryButton extends StatelessWidget {
  const GlobalSecondaryButton({super.key, required this.width, required this.text, required this.onTap});

  final double width;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorManager.primary,
            width: AppSize.s2,
          ),
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppSize.s100.r),
        ),
        height: AppSize.s40.h,
        width: width,
        child: Center(
          child: Text(text,style: Theme.of(context).textTheme.labelLarge,),
        ),

      ),
    );
  }
}
