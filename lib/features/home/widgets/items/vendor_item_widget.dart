import 'package:delivery_app/features/global_widgets/global_button_widget.dart';
import 'package:delivery_app/resources/assets_manager.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VendorItemWidget extends StatelessWidget {
  const VendorItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSize.s12.r),
            topRight: Radius.circular(AppSize.s12.r),
          )),
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
            height: AppSize.s150.h,
            decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppSize.s12.r),
                  bottomRight: Radius.circular(AppSize.s12.r),
                )),
            child: Padding(
              padding:  EdgeInsets.all(AppPadding.p16.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("ابن البلد",style: Theme.of(context).textTheme.bodySmall,),
                      const Spacer(),
                      Text("4.0/5.0",style: Theme.of(context).textTheme.headlineSmall,),
                      Icon(Icons.star,color: ColorManager.starRateColor,size: 20,)
                    ],
                  ),
                  SizedBox(
                    height: AppSize.s10.h,
                  ),

                   Row(
                    children: [

                      Icon(Icons.location_on,size: AppSize.s25.r,),
                      SizedBox(width: AppSize.s5.w,),
                      Text("مدينة 6 أكتوبر، محافظة الجيزة",style: Theme.of(context).textTheme.labelMedium,)
                    ],
                  ),
                  SizedBox(height: AppSize.s15.h,),
                  GlobalButtonWidget(
                      text: "اطلب الآن", onTap: () {}, width: AppSize.s225.w)
                ],
              ),
            ))
      ],
    );
  }
}
