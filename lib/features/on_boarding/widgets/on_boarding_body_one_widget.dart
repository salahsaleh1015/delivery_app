import 'package:delivery_app/features/authentication/views/sign_up_vew.dart';
import 'package:delivery_app/features/on_boarding/widgets/dot_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/routes_manager.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/values_manager.dart';
import '../../global_widgets/global_button_widget.dart';

class OnBoardingBodyOneWidget extends StatelessWidget {
   const OnBoardingBodyOneWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         SizedBox(
          height: AppSize.s50.h,
        ),
        SizedBox(
            height: AppSize.s415.h,
            width: AppSize.s408.w,
            child: Image.asset("assets/images/on_boarding_one.png")),
         SizedBox(
          height: AppSize.s50.h,
        ),
        Text(
          "Welcome to",
          style: Theme.of(context).textTheme.displaySmall,
        ),
         SizedBox(
          height:AppSize.s10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Yalla ",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "Delivery",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
         SizedBox(
          height: AppSize.s15.h,
        ),
        Text(
          "Discover the fastest and easiest way to manage and deliver orders",
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: TextAlign.center,
        ),
         SizedBox(
          height:AppSize.s25.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DotWidget(
              color: ColorManager.primary,
            ),
             SizedBox(
              width: AppSize.s15.w,
            ),
            DotWidget(
              color: ColorManager.lightPrimary,
            ),
          ],
        ),
         SizedBox(
          height: AppSize.s33.h,
        ),
        GlobalButtonWidget(
          width: AppSize.s312.w,
          text: "START",
          onTap: () {
            Navigator.pushNamed(context, Routes.signUpRoute);
          },
        )
      ],
    );
  }
}
