import 'package:delivery_app/resources/font_manager.dart';
import 'package:flutter/material.dart';


class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
      "By signing up, you agree to our Terms of Serviceand Privacy Policy",
      style: Theme.of(context)
          .textTheme
          .labelSmall!
          .copyWith(fontSize: FontSize.s12),
      textAlign: TextAlign.center,
    );
  }
}