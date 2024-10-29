import 'package:delivery_app/features/on_boarding/widgets/dot_widget.dart';
import 'package:delivery_app/features/widgets/custom_global_button_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:flutter/material.dart';


class OnBoardingTwoView extends StatelessWidget {
  const OnBoardingTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Image.asset("assets/images/on_boarding_two.png"),
        const SizedBox(
          height: 80,
        ),
        Text(
          "Ready to Join",
          style: Theme.of(context).textTheme.displayMedium,
        ),

        const SizedBox(
          height: 15,
        ),
        Text(
          "Log in or create your account now to get started and manage your experience, make requests, or deliver orders.",
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
              color: ColorManager.lightPrimary,
            ),
            const SizedBox(
              width: 15,
            ),
            DotWidget(
              color: ColorManager.primary,
            ),
          ],
        ),
        const SizedBox(
          height: 37,
        ),
        CustomGlobalButtonWidget(
          text: "CREATE ACCOUNT",
          onTap: () {},
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: (){},
          child: Text("ALREADY HAVE AN ACCOUNT?",style: Theme.of(context).textTheme.bodySmall,),

        )
      ],
    );
  }
}
