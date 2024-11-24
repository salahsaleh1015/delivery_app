import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/font_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummaryDetailsItemWidget extends StatelessWidget {
  const SummaryDetailsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.p20.r),
      width: double.infinity,
      height: AppSize.s270.h,
      decoration: BoxDecoration(
        border: Border.all(
            color: ColorManager.socialButtonColor, width: AppSize.s1.w),
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(AppSize.s12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildRow(context, value: 'ابن البلد', title: 'رقم الطلب'),
          buildRow(context, value: '2 X دجاج هارت اتاك', title: 'الطلب'),
          buildRow(context, value: 'قطعة واحدة', title: 'الحجم'),
          buildRow(context, value: r'$100', title: 'السعر'),
          buildRow(context, value: r'$1', title: 'الرسوم'),
          Divider(
            color: ColorManager.socialButtonColor,
            height: AppSize.s1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "إجمالي السعر",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(r"$101",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: FontSize.s22.sp,
                      )),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildRow(context, {required String title, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          value,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: ColorManager.black),
        ),
      ],
    );
  }
}
