import 'package:delivery_app/features/authentication/views/sign_in_view.dart';
import 'package:delivery_app/features/authentication/views/sign_up_vew.dart';
import 'package:delivery_app/features/authentication/views/verification_view.dart';
import 'package:delivery_app/features/home/view/choose_delivery_view.dart';
import 'package:delivery_app/features/home/view/home_view.dart';
import 'package:delivery_app/features/home/view/shop_details_view.dart';
import 'package:delivery_app/features/main_layout/views/main_layout_view.dart';
import 'package:delivery_app/features/on_boarding/views/on_boarding_view.dart';
import 'package:delivery_app/features/splash/splash_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String signInRoute = "/signIn";
  static const String signUpRoute = "/signUp";
  static const String verificationRoute = "/verification";
  static const String mainLayoutRoute = "/mainLayout";
  static const String homeRoute = "/home";
  static const String shopDetailsRoute = "/shopDetails";
  static const String chooseDeliveryRoute = "/chooseDelivery";

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.signInRoute:
        return MaterialPageRoute(builder: (_) => const SignInView());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routes.verificationRoute:
        return MaterialPageRoute(builder: (_) => const VerificationView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case Routes.mainLayoutRoute:
        return MaterialPageRoute(builder: (_) => const MainLayoutView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
        case Routes.chooseDeliveryRoute:
        return MaterialPageRoute(builder: (_) => const ChooseDeliveryView());
      case Routes.shopDetailsRoute:
        return MaterialPageRoute(builder: (_) => const ShopDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  "No Route Found",
                ),
              ),
              body: const Center(
                child: Text(
                  "No Route Found",
                ),
              ),
            ));
  }
}
