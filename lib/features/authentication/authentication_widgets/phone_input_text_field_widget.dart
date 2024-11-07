import 'package:delivery_app/resources/colors_manager.dart';
import 'package:flutter/material.dart';

class PhoneInputTextFieldWidget extends StatelessWidget {
  const PhoneInputTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {},
      decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ColorManager.primary)),
          hintText: 'Enter your phone number',
          hintStyle: Theme.of(context)
              .textTheme
              .labelSmall!
              .copyWith(color: ColorManager.hintColor),
          fillColor: ColorManager.inputFillColor,
          filled: true),
    );
  }
}
