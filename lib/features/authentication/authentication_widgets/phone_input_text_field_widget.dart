import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneInputTextFieldWidget extends StatelessWidget {
  const PhoneInputTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {},
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(

          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ColorManager.primary)),
          hintText: 'أدخل رقم هاتفك',
          hintStyle: Theme.of(context)
              .textTheme
              .labelSmall!
              .copyWith(color: ColorManager.hintColor,fontSize: FontSize.s16.sp),
          fillColor: ColorManager.inputFillColor,
          filled: true),
    );
  }
}
