

import 'package:delivery_app/resources/assets_manager.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AdvertisementItemWidget extends StatelessWidget {
  const AdvertisementItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppSize.s12.r),
                topRight: Radius.circular(AppSize.s12.r),
              )
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppSize.s12.r),
              topRight: Radius.circular(AppSize.s12.r),
            ),
            child: Image.asset(
                fit: BoxFit.fill,
                width: AppSize.s250.w,
                height: AppSize.s130.h,
                AssetsManager.shopTest),
          ),
        ),
        Container(
          width: AppSize.s250.w,
          height: AppSize.s50.h,
          decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppSize.s12.r),
                bottomRight: Radius.circular(AppSize.s12.r),
              )

          ),
          child: Center(
            child: Text("هارت اتاك",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: ColorManager.primary
            ),),
          ),
        )
      ],
    );
  }
}
