import 'package:delivery_app/features/on_boarding/views/on_boarding_one_view.dart';
import 'package:delivery_app/features/on_boarding/views/on_boarding_two_view.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:flutter/material.dart';

class CustomOnBoardingScaffold extends StatelessWidget {
  CustomOnBoardingScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            ColorManager.lightPrimary,
            ColorManager.scaffoldBackgroundColor,
            ColorManager.scaffoldBackgroundColor,
          ],
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
        )),
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: const [
            OnBoardingOneView(),
            OnBoardingTwoView(),
          ],
        ),
      ),
    );
  }
}
