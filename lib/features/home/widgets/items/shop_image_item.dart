
import 'package:delivery_app/features/global_widgets/global_circular_button_widget.dart';
import 'package:delivery_app/resources/assets_manager.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ShopImageItem extends StatelessWidget {
  const ShopImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s180.h,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsManager.shopTest),
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p10.w,
          vertical: AppPadding.p50.h,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GlobalCircularButtonWidget(
              onTap: () {
                Navigator.pop(context);
              },
              icon: Icons.arrow_back,
              iconColor: ColorManager.white,
              circleColor: ColorManager.circleButtonColor,
            ),
            GlobalCircularButtonWidget(
              onTap: () {},
              icon: Icons.shopping_cart_sharp,
              iconColor: ColorManager.white,
              circleColor: ColorManager.circleButtonColor,
            )
          ],
        ),
      ),
    );
  }
}