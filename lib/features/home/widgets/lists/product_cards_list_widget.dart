

import 'package:delivery_app/features/home/widgets/items/product_card_item_widget.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCardsListWidget extends StatelessWidget {
  const ProductCardsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
        width: double.infinity,
        height: AppSize.s250.h,
        child: ListView.separated(
            separatorBuilder:(context, index) =>  SizedBox(width: AppSize.s10.w),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder:
                (context, index) => const ProductCardItemWidget()));
  }
}
