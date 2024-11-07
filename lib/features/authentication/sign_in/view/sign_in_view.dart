import 'package:delivery_app/features/authentication/authentication_widgets/auth_social_botton.dart';
import 'package:delivery_app/features/authentication/authentication_widgets/or_break_widget.dart';
import 'package:delivery_app/features/authentication/authentication_widgets/phone_input_text_field_widget.dart';
import 'package:delivery_app/features/authentication/authentication_widgets/terms_text.dart';
import 'package:delivery_app/features/authentication/verification/view/verification_view.dart';
import 'package:delivery_app/features/global_widgets/global_button_widget.dart';
import 'package:delivery_app/features/global_widgets/global_circular_button_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/font_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';



class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: AppSize.s70,
            ),
            GlobalCircularButtonWidget(
              onTap: () {
                Navigator.pop(context);
              },
              iconColor: ColorManager.black,
              icon: Icons.arrow_back,
            ),
            const SizedBox(
              height: AppSize.s50,
            ),
            Text("WELCOME BACK!",
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(
              height: AppSize.s20,
            ),
            Text(
                "Log in to your account to access your orders and manage your preferences.",
                style: Theme.of(context).textTheme.labelSmall),
            const SizedBox(
              height: AppSize.s50,
            ),
            Text("Phone Number",
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: ColorManager.black)),
            const SizedBox(
              height: AppSize.s10,
            ),
            const PhoneInputTextFieldWidget(),
            const SizedBox(
              height: AppSize.s30,
            ),
            GlobalButtonWidget(
              width: double.infinity,
              text: "CONTINUE",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const VerificationView()));
              },
            ),
            const SizedBox(
              height: 250,
            ),
            const OrBreakWidget(),
            const SizedBox(
              height: AppSize.s30,
            ),
            const AuthSocialButton(),
            const SizedBox(
              height: AppSize.s10,
            ),
            const TermsText(),
          ],
        ),
      ),
    );
  }
}
