import 'package:delivery_app/features/authentication/authentication_widgets/auth_social_botton.dart';
import 'package:delivery_app/features/authentication/authentication_widgets/or_break_widget.dart';
import 'package:delivery_app/features/authentication/authentication_widgets/phone_input_text_field_widget.dart';
import 'package:delivery_app/features/authentication/authentication_widgets/terms_text.dart';
import 'package:delivery_app/features/authentication/views/verification_view.dart';
import 'package:delivery_app/features/global_widgets/global_button_widget.dart';
import 'package:delivery_app/features/global_widgets/global_circular_button_widget.dart';
import 'package:delivery_app/resources/assets_manager.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/font_manager.dart';
import 'package:delivery_app/resources/routes_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: AppSize.s70.h,
            ),
            GlobalCircularButtonWidget(
              onTap: () {
                Navigator.pop(context);
              },
              iconColor: ColorManager.black,
              icon: Icons.arrow_back,
            ),
             SizedBox(
              height: AppSize.s50.h,
            ),
            Text("CREATE AN ACCOUNT",
                style: Theme.of(context).textTheme.headlineSmall),
             SizedBox(
              height: AppSize.s20.h,
            ),
            Text(
                "Join us today to unlock features, manage requests, and stay connected with your delivery needs!",
                style: Theme.of(context).textTheme.labelSmall),
             SizedBox(
              height: AppSize.s50.h,
            ),
            Text("Phone Number",
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: ColorManager.black)),
             SizedBox(
              height: AppSize.s10.h,
            ),
            const PhoneInputTextFieldWidget(),
             SizedBox(
              height: AppSize.s30.h,
            ),
            GlobalButtonWidget(
              width: double.infinity,
              text: "CONTINUE",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const VerificationView()));
              },
            ),
             SizedBox(
              height: AppSize.s250.h,
            ),
            const OrBreakWidget(),
             SizedBox(
              height: AppSize.s30.h,
            ),
             AuthSocialButton(
              onTap: (){
                Navigator.pushNamed(context, Routes.verificationRoute);
              },
            ),
             SizedBox(
              height: AppSize.s10.h,
            ),
            const TermsText(),
          ],
        ),
      ),
    );
  }
}