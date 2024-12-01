import 'package:delivery_app/resources/colors_manager.dart';
import 'package:flutter/material.dart';
class AccountInfoBarWidget extends StatelessWidget {
  const AccountInfoBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("المعلومات الشخصية",style: Theme.of(context).textTheme.bodyMedium,),
        TextButton(
          onPressed: (){

          },
          child: Row(
            children: [
              Text("تغيير",style: Theme.of(context).textTheme.labelLarge,),
              Icon(Icons.arrow_forward,color: ColorManager.primary,)
            ],
          ),),
      ],
    );
  }
}
