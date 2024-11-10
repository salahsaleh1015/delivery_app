import 'package:delivery_app/features/authentication/authentication_widgets/auth_social_botton.dart';
import 'package:delivery_app/features/authentication/authentication_widgets/or_break_widget.dart';
import 'package:delivery_app/features/authentication/authentication_widgets/terms_text.dart';
import 'package:delivery_app/features/global_widgets/global_button_widget.dart';
import 'package:delivery_app/features/global_widgets/global_circular_button_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/routes_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(
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
            Text("Verify Your Account",
                style: Theme.of(context).textTheme.headlineSmall),
             SizedBox(
              height: AppSize.s20.h,
            ),
            Text(
                "We’ve sent a 6-digit code to your registered phone number. Please enter the code below to confirm your account.",
                style: Theme.of(context).textTheme.labelSmall),
             SizedBox(
              height: AppSize.s50.h,
            ),
            OtpTextField(
              focusedBorderColor: ColorManager.hintColor,
              enabledBorderColor: ColorManager.primary,
              numberOfFields: 6,

              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
             SizedBox(
              height: AppSize.s30.h,
            ),
            GlobalButtonWidget(
              width: double.infinity,
              text: "SUBMIT CODE",
              onTap: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't receive your code?",
                    style: Theme.of(context).textTheme.labelMedium!),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: ColorManager.primary),
                    )),
                Text("In",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: ColorManager.black)),
                Text("(",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: ColorManager.black)),
                Text(
                  "35s",
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: ColorManager.primary),
                ),
                Text(")",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: ColorManager.black)),
              ],
            ),
             SizedBox(
              height: AppSize.s180.h,
            ),
            const OrBreakWidget(),
             SizedBox(
              height: AppSize.s30.h,
            ),
            AuthSocialButton(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  Routes.mainLayoutRoute,
                  (Route<dynamic> route) => false,
                );
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
