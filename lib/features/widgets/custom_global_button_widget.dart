


import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomGlobalButtonWidget extends StatelessWidget {
  const CustomGlobalButtonWidget({super.key, required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.primary,
          borderRadius: BorderRadius.circular(AppSize.s100),
        ),
        height: AppSize.s48,
        width: AppSize.s312,
        child: Center(
          child: Text(text,style: Theme.of(context).textTheme.titleSmall,),
        ),

      ),
    );
  }
}
