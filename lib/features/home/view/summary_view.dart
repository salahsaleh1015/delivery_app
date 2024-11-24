import 'package:delivery_app/features/global_widgets/global_app_bar.dart';
import 'package:delivery_app/features/global_widgets/global_button_widget.dart';
import 'package:delivery_app/features/home/widgets/items/notes_section_item_widget.dart';
import 'package:delivery_app/features/home/widgets/items/summary_delivery_item_widget.dart';
import 'package:delivery_app/features/home/widgets/items/summary_details_item_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummaryView extends StatelessWidget {
  const SummaryView({super.key});

  static String id = "SummaryView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: AppPadding.p40.h,
          left: AppPadding.p10.w,
          right: AppPadding.p10.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GlobalAppBar(title: "ملخص الطلب"),
              SizedBox(
                height: AppSize.s30.h,
              ),
              Text("تفاصيل الطلب",
                  style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(
                height: AppSize.s15.h,
              ),
              const SummaryDetailsItemWidget(),
              SizedBox(
                height: AppSize.s20.h,
              ),
              Text("تفاصيل التوصيل",
                  style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(
                height: AppSize.s15.h,
              ),
              const SummaryDeliveryItemWidget(),
              SizedBox(
                height: AppSize.s15.h,
              ),
             const NotesSectionItemWidget()
            ],
          ),
        ),
      ),
      bottomNavigationBar: GlobalButtonWidget(
        text: "تأكيد الطلب",
        onTap: () {},
        width: double.infinity,
      ),
    );
  }
}
