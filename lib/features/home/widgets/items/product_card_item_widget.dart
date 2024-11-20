


import 'package:delivery_app/resources/assets_manager.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ProductCardItemWidget extends StatelessWidget {
  const ProductCardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.s200.h,
      height: AppSize.s250.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s12.r),
        color: ColorManager.white,
        border: Border.all(
            color: ColorManager.socialButtonColor, width: AppSize.s1.w),
      ),
      child: Padding(
        padding:  EdgeInsets.all(AppSize.s20.r),
        child: Column(
          children: [
            ClipRRect(
                borderRadius:
                BorderRadius.all(Radius.circular(AppSize.s12.r)),
                child: Image.asset(
                  AssetsManager.productTest,
                  height: AppSize.s100.h,
                  width: AppSize.s150.w,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: AppSize.s10.h,
            ),
            Text("دجاج هارت أتاك",style: Theme.of(context).textTheme.bodySmall,),
            SizedBox(
              height: AppSize.s20.h,
            ),
            Text(
              r"$100",
              style: Theme.of(context).textTheme.labelSmall,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: AppSize.s20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: AppSize.s25.w,
                    height: AppSize.s20.h,
                    decoration: BoxDecoration(
                      color: ColorManager.darkGrayColor,
                      borderRadius: BorderRadius.circular(AppSize.s5.r),
                    ),
                    child: Center(
                      child: Icon(Icons.add,color: ColorManager.white,),
                    ),
                  ),
                ),
                SizedBox(
                  width: AppSize.s10.w,
                ),
                Text("1",style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: ColorManager.primary),),
                SizedBox(
                  width: AppSize.s10.w,
                ),

                GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: AppSize.s25.w,
                    height: AppSize.s20.h,
                    decoration: BoxDecoration(
                      color: ColorManager.darkGrayColor,
                      borderRadius: BorderRadius.circular(AppSize.s5.r),
                    ),
                    child: Center(
                      child: Icon(Icons.remove,color: ColorManager.white,),
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
