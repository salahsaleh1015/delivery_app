import 'package:delivery_app/resources/assets_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../resources/colors_manager.dart';


class AuthSocialButton extends StatelessWidget {
  const AuthSocialButton({super.key, required this.onTap});
 final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppSize.s48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorManager.inputFillColor,
          borderRadius: BorderRadius.circular(AppSize.s48),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AssetsManager.googleIcon, width:AppSize.s30,height: AppSize.s30,),
              const SizedBox(
                width: AppSize.s10,
              ),
              Text(
                "CONTINUE WITH GOOGLE",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: ColorManager.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
