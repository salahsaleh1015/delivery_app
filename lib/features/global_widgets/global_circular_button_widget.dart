import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';

class GlobalCircularButtonWidget extends StatelessWidget {
  const GlobalCircularButtonWidget(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.iconColor});
  final VoidCallback onTap;
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: ColorManager.lightPrimary,
        radius: AppSize.s25,
        child: Icon(
          size: AppSize.s30,
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}