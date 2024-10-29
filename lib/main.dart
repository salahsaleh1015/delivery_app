
import 'package:delivery_app/features/on_boarding/views/on_boarding_one_view.dart';
import 'package:delivery_app/features/on_boarding/widgets/custom_on_boarding_scaffold.dart';
import 'package:delivery_app/resources/theme_manager.dart';
import 'package:flutter/material.dart';
//كتنساش تغير اسم التطبيق و ال package name

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Yalla Delivery app',
      home: const YallaDeliveryApp(),
    );
  }
}

class YallaDeliveryApp extends StatelessWidget {
  const YallaDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomOnBoardingScaffold();
  }
}

