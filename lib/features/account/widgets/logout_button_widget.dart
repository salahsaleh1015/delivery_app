import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoutButtonWidget extends StatelessWidget {
  const LogoutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
      onTap: (){},
      child: Container(
        width: double.infinity,
        height: AppSize.s40.h,
        decoration: BoxDecoration(
          color: ColorManager.lightRedColor,
          borderRadius: BorderRadius.circular(AppSize.s100.r),
        ),
        child: Center(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.logout,color: ColorManager.error,),
              SizedBox(width: AppSize.s10.w,),
              Text("تسجيل الخروج",style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: ColorManager.error
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
