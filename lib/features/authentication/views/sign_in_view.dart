import 'package:delivery_app/features/authentication/authentication_widgets/auth_social_botton.dart';
import 'package:delivery_app/features/authentication/authentication_widgets/or_break_widget.dart';
import 'package:delivery_app/features/authentication/authentication_widgets/phone_input_text_field_widget.dart';
import 'package:delivery_app/features/authentication/authentication_widgets/terms_text.dart';
import 'package:delivery_app/features/authentication/views/verification_view.dart';
import 'package:delivery_app/features/global_widgets/global_button_widget.dart';
import 'package:delivery_app/features/global_widgets/global_circular_button_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/routes_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p20.w,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSize.s50.h,
              ),
              GlobalCircularButtonWidget(
                onTap: () {
                  Navigator.pop(context);
                },
                iconColor: ColorManager.black,
                icon: Icons.arrow_back,
              ),
              SizedBox(
                height: AppSize.s20.h,
              ),
              Text("مرحباً بعودتك!",
                  style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(
                height: AppSize.s20.h,
              ),
              Text(
                  "قم بتسجيل الدخول إلى حسابك للوصول إلى طلباتك وإدارة تفضيلاتك.",
                  style: Theme.of(context).textTheme.labelSmall),
              SizedBox(
                height: AppSize.s50.h,
              ),
              Text("رقم الهاتف",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium),
              SizedBox(
                height: AppSize.s10.h,
              ),
              const PhoneInputTextFieldWidget(),
              SizedBox(
                height: AppSize.s30.h,
              ),
              GlobalButtonWidget(
                width: double.infinity,
                text: "متابعة",
                onTap: () {
                  Navigator.pushNamed(context, Routes.verificationRoute);
                },
              ),
              SizedBox(
                height: AppSize.s100.h,
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
                height: AppSize.s25.h,
              ),
              const TermsText(),
            ],
          ),
        ),
      ),
    );
  }
}
