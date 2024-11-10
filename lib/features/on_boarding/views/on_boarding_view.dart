import 'package:delivery_app/features/on_boarding/widgets/on_boarding_body_one_widget.dart';
import 'package:delivery_app/features/on_boarding/widgets/on_boarding_body_two_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({
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
            OnBoardingBodyOneWidget(),
            OnBoardingBodyTwoWidget(),
          ],
        ),
      ),
    );
  }
}
