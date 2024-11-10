import 'package:delivery_app/features/authentication/views/sign_up_vew.dart';
import 'package:delivery_app/features/on_boarding/widgets/dot_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/routes_manager.dart';

import 'package:flutter/material.dart';

import '../../../resources/values_manager.dart';
import '../../global_widgets/global_button_widget.dart';

class OnBoardingBodyOneWidget extends StatelessWidget {
   const OnBoardingBodyOneWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(
          height: AppSize.s50,
        ),
        Image.asset("assets/images/on_boarding_one.png"),
        const SizedBox(
          height: AppSize.s50,
        ),
        Text(
          "Welcome to",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(
          height:AppSize.s10,
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
        const SizedBox(
          height: AppSize.s15,
        ),
        Text(
          "Discover the fastest and easiest way to manage and deliver orders",
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height:AppSize.s25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DotWidget(
              color: ColorManager.primary,
            ),
            const SizedBox(
              width: AppSize.s15,
            ),
            DotWidget(
              color: ColorManager.lightPrimary,
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.s33,
        ),
        GlobalButtonWidget(
          width: AppSize.s312,
          text: "START",
          onTap: () {
            Navigator.pushNamed(context, Routes.signUpRoute);
          },
        )
      ],
    );
  }
}
