import 'package:delivery_app/features/home/widgets/lists/product_cards_list_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsSectionItemWidget extends StatelessWidget {
  const ProductsSectionItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppPadding.p10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "الخدمات المقدمة",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: ColorManager.black),
          ),
          SizedBox(
            height: AppSize.s10.h,
          ),
          Text(
            "الخدمات المقدمة من ابن البلد",
            style: Theme.of(context).textTheme.labelSmall,
          ),
          SizedBox(
            height: AppSize.s10.h,
          ),
          const ProductCardsListWidget(),
        ],
      ),
    );
  }
}
