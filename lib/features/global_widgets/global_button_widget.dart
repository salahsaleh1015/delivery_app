


import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';

class GlobalButtonWidget extends StatelessWidget {
  const GlobalButtonWidget({super.key, required this.text, required this.onTap, required this.width});
 final double width;
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
        width: width,
        child: Center(
          child: Text(text,style: Theme.of(context).textTheme.titleSmall,),
        ),

      ),
    );
  }
}