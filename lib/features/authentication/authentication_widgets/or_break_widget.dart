

import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';


class OrBreakWidget extends StatelessWidget {
  const OrBreakWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const MyDivider(),
        const SizedBox(
          width: AppSize.s10,
        ),
        Text("OR", style: Theme.of(context).textTheme.labelSmall),
        const SizedBox(
          width: AppSize.s10,
        ),
        const MyDivider(),
      ],
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: AppSize.s2,
      width:AppSize.s180,
      color: ColorManager.socialButtonColor,
    );
  }
}
