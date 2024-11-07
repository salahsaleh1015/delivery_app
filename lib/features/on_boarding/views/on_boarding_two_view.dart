import 'package:delivery_app/features/authentication/sign_in/view/sign_in_view.dart';
import 'package:delivery_app/features/global_widgets/global_button_widget.dart';
import 'package:delivery_app/features/on_boarding/widgets/dot_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import '../../../resources/values_manager.dart';

class OnBoardingTwoView extends StatelessWidget {
  const OnBoardingTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: AppSize.s50,
        ),
        Image.asset("assets/images/on_boarding_two.png"),
        const SizedBox(
          height: AppSize.s80,
        ),
        Text(
          "Ready to Join",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(
          height: AppSize.s15,
        ),
        Text(
          "Log in or create your account now to get started and manage your experience, make requests, or deliver orders.",
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: AppSize.s15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DotWidget(
              color: ColorManager.lightPrimary,
            ),
            const SizedBox(
              width: AppSize.s15,
            ),
            DotWidget(
              color: ColorManager.primary,
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.s37,
        ),
        GlobalButtonWidget(
          width: AppSize.s312,
          text: "CREATE ACCOUNT",
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInView()));
          },
        ),
        const SizedBox(
          height: AppSize.s20,
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInView()));
          },
          child: Text(
            "ALREADY HAVE AN ACCOUNT?",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        )
      ],
    );
  }
}
