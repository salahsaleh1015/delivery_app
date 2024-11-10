import 'package:delivery_app/features/authentication/views/sign_in_view.dart';
import 'package:delivery_app/features/global_widgets/global_button_widget.dart';
import 'package:delivery_app/features/on_boarding/widgets/dot_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../resources/values_manager.dart';

class OnBoardingBodyTwoWidget extends StatelessWidget {
  const OnBoardingBodyTwoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          height: AppSize.s50.h,
        ),
        SizedBox(
            height: AppSize.s415.h,
            width: AppSize.s408.w,
            child: Image.asset("assets/images/on_boarding_two.png")),
         SizedBox(
          height: AppSize.s80.h,
        ),
        Text(
          "Ready to Join",
          style: Theme.of(context).textTheme.displayMedium,
        ),
         SizedBox(
          height: AppSize.s15.h,
        ),
        Text(
          "Log in or create your account now to get started and manage your experience, make requests, or deliver orders.",
          style: Theme.of(context).textTheme.labelSmall,
          textAlign: TextAlign.center,
        ),
         SizedBox(
          height: AppSize.s15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DotWidget(
              color: ColorManager.lightPrimary,
            ),
             SizedBox(
              width: AppSize.s15.w,
            ),
            DotWidget(
              color: ColorManager.primary,
            ),
          ],
        ),
         SizedBox(
          height: AppSize.s37.h,
        ),
        GlobalButtonWidget(
          width: AppSize.s312.w,
          text: "CREATE ACCOUNT",
          onTap: () {
            Navigator.pushNamed(context, Routes.signInRoute);
          },
        ),
         SizedBox(
          height: AppSize.s20.h,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.signInRoute);
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
