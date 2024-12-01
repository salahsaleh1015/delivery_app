import 'package:delivery_app/resources/colors_manager.dart';
import 'package:flutter/material.dart';

class AdsBarWidget extends StatelessWidget {
  const AdsBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("شركاء الاعلانات",style: Theme.of(context).textTheme.bodyMedium,),
        TextButton(
          onPressed: (){

          },
          child: Row(
            children: [
              Text("عرض",style: Theme.of(context).textTheme.labelLarge,),
              Icon(Icons.arrow_forward,color: ColorManager.primary,)
            ],
          ),),
      ],
    );
  }
}
