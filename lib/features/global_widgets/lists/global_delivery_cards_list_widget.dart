


import 'package:delivery_app/features/global_widgets/global_delivery_card_widget.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalDeliveryCardsListWidget extends StatelessWidget {
  const GlobalDeliveryCardsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.65,
      child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => SizedBox(
            height: AppSize.s10.h,
          ),
          itemBuilder: (context, index) =>
          const GlobalDeliveryCardWidget()),
    );
  }
}
