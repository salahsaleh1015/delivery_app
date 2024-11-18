import 'package:delivery_app/features/global_widgets/global_circular_button_widget.dart';
import 'package:delivery_app/features/home/widgets/items/search_card_widget.dart';
import 'package:delivery_app/features/home/widgets/lists/advertisement_list_widget.dart';
import 'package:delivery_app/features/home/widgets/lists/vendor_list_widget.dart';
import 'package:delivery_app/resources/assets_manager.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppPadding.p40.h,
        left: AppPadding.p10.w,
        right: AppPadding.p10.w,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AssetsManager.userAvatar,
                  height: AppSize.s50.h,
                  width: AppSize.s50.w,
                ),
                GlobalCircularButtonWidget(
                  onTap: () {},
                  icon: Icons.shopping_cart_outlined,
                  iconColor: ColorManager.black,
                ),
              ],
            ),
            SizedBox(
              height: AppSize.s25.h,
            ),
            const SearchCardWidget(),
            SizedBox(
              height: AppSize.s30.h,
            ),
            Text("شركاء الإعلانات",style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: ColorManager.black
            ),),
             SizedBox(
              height: AppSize.s10.h,
            ),
            const AdvertisementListWidget(),
        
            Row(
        
              children: [
                Text("موزعي الخدمة",style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: ColorManager.black
                ),),
               const Spacer(),
               Text("عرض الكل",style: Theme.of(context).textTheme.bodySmall,),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,color: ColorManager.primary,),)
              ],
            ),
            SizedBox(
              height: AppSize.s10.h,
            ),
            const VendorListWidget(),

        
          ],
        ),
      ),
    );
  }
}
