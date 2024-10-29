import 'package:delivery_app/features/on_boarding/widgets/custom_on_boarding_scaffold.dart';
import 'package:delivery_app/features/on_boarding/widgets/dot_widget.dart';
import 'package:delivery_app/features/widgets/custom_global_button_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';

import 'package:flutter/material.dart';

class OnBoardingOneView extends StatelessWidget {
   const OnBoardingOneView({super.key});


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Image.asset("assets/images/on_boarding_one.png"),
        const SizedBox(
          height: 50,
        ),
        Text(
          "Welcome to",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(
          height: 10,
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
          height: 15,
        ),
        Text(
          "Discover the fastest and easiest way to manage and deliver orders",
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height:45,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DotWidget(
              color: ColorManager.primary,
            ),
            const SizedBox(
              width: 15,
            ),
            DotWidget(
              color: ColorManager.lightPrimary,
            ),
          ],
        ),
        const SizedBox(
          height: 45,
        ),
        CustomGlobalButtonWidget(
          text: "START",
          onTap: () {},
        )
      ],
    );
  }
}
