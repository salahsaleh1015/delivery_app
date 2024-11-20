import 'package:delivery_app/features/global_widgets/global_button_widget.dart';
import 'package:delivery_app/features/global_widgets/global_decorated_bottom_container.dart';
import 'package:delivery_app/features/home/widgets/items/product_card_item_widget.dart';
import 'package:delivery_app/features/home/widgets/items/product_section_item_widget.dart';
import 'package:delivery_app/features/home/widgets/items/shop_image_item.dart';
import 'package:delivery_app/features/home/widgets/items/shop_info_item_widget.dart';
import 'package:delivery_app/features/home/widgets/price_card_item_wdget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopDetailsView extends StatelessWidget {
  const ShopDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const  ShopImageItem(),
            SizedBox(
              height: AppSize.s10.h,
            ),
           const ShopInfoItemWidget(),
            Divider(
              indent: AppSize.s20.w,
              endIndent: AppSize.s20.w,
              color: ColorManager.socialButtonColor,
            ),
            SizedBox(
              height: AppSize.s20.h,
            ),
           const ProductsSectionItemWidget(),
            SizedBox(
              height: AppSize.s50.h,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const PriceCardItemWidget(),
    );
  }
}


