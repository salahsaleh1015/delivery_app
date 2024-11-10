

import 'dart:async';

import 'package:delivery_app/resources/assets_manager.dart';
import 'package:delivery_app/resources/routes_manager.dart';
import 'package:flutter/material.dart';

import '../../resources/constants_manager.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Timer? _timer;
  _splashDelay() {
    _timer = Timer(const Duration(seconds: AppConstant.splashDelay), () {
      Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
    });
  }

  @override
  void initState() {
    _splashDelay();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Image(
              image: AssetImage(AssetsManager.splashLogo),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Yalla ",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  "Delivery",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
   _timer?.cancel();
    super.dispose();
  }
}
