import 'package:delivery_app/features/global_widgets/global_app_bar.dart';
import 'package:delivery_app/features/global_widgets/global_button_widget.dart';
import 'package:delivery_app/features/global_widgets/global_delivery_card_widget.dart';
import 'package:delivery_app/features/global_widgets/lists/global_delivery_cards_list_widget.dart';
import 'package:delivery_app/features/home/view/summary_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../resources/values_manager.dart';

class ChooseDeliveryView extends StatelessWidget {
  const ChooseDeliveryView({super.key});
  static String id = 'ChooseDeliveryView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: AppPadding.p40.h,
          left: AppPadding.p10.w,
          right: AppPadding.p10.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GlobalAppBar(
              title: "اختر التوصيل",
            ),
            SizedBox(
              height: AppSize.s50.h,
            ),
            Text(
              "جميع مندوبي التوصيل المتاحين",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: AppSize.s10.h,
            ),
            GlobalDeliveryCardsListWidget(
             height: MediaQuery.of(context).size.height*0.65,
           ),
          ],
        ),
      ),
      bottomNavigationBar: GlobalButtonWidget(
        text: "استمر",
        onTap: () {
          Navigator.pushNamed(context, SummaryView.id);
        },
        width: double.infinity,
      ),
    );
  }
}
