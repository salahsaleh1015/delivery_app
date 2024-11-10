import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:delivery_app/features/authentication/views/sign_up_vew.dart';
import 'package:delivery_app/features/on_boarding/views/on_boarding_view.dart';
import 'package:delivery_app/resources/routes_manager.dart';
import 'package:delivery_app/resources/theme_manager.dart';
import 'package:flutter/material.dart';
//كتنساش تغير اسم التطبيق و ال package name

void main() {
  runApp(const YallaDeliveryApp());
}

class YallaDeliveryApp extends StatelessWidget {
  const YallaDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: getApplicationTheme(),
        debugShowCheckedModeBanner: false,
        title: 'Yalla Delivery app',
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splashRoute,
      ),
    );
  }
}
