import 'package:delivery_app/resources/colors_manager.dart';
import 'package:flutter/material.dart';


class DotWidget extends StatelessWidget {
  const DotWidget({super.key, required this.color});
    final Color color;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
