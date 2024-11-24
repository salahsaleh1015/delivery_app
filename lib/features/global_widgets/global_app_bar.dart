

import 'package:delivery_app/features/global_widgets/global_circular_button_widget.dart';
import 'package:flutter/material.dart';

class GlobalAppBar extends StatelessWidget {
  const GlobalAppBar({super.key, required this.title, this.onTap});

  final VoidCallback? onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GlobalCircularButtonWidget(onTap: onTap?? (){
          Navigator.pop(context);
        }, icon: Icons.arrow_back,),

        Text(title,style: Theme.of(context).textTheme.titleMedium,),
        GlobalCircularButtonWidget(onTap: (){
          /// todo: navigate to cart view
        }, icon: Icons.shopping_cart_outlined,)
      ],
    );
  }
}
