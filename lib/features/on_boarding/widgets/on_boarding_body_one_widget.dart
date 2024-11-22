import 'package:delivery_app/features/authentication/views/sign_up_vew.dart';
import 'package:delivery_app/features/on_boarding/widgets/dot_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/routes_manager.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/values_manager.dart';
import '../../global_widgets/global_button_widget.dart';

class OnBoardingBodyOneWidget extends StatelessWidget {
   const OnBoardingBodyOneWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
SizedBox(
          height: AppSize.s50.h,
),
        SizedBox(
          //color: Colors.black,
            height: AppSize.s315.h,
            width: AppSize.s408.w,
            child: Image.asset("assets/images/on_boarding_one.png")),

        Text(
          "أهلاً بك في",
          style: Theme.of(context).textTheme.displaySmall,
        ),
         SizedBox(
          height:AppSize.s10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "يلا ",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "ديلفري",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
         SizedBox(
          height: AppSize.s15.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p20.w),
          height: AppSize.s100,
          child: Text(
            "اكتشف أسرع وأسهل طريقة لإدارة طلباتك وتوصيلها بكل يسر وسلاسة",
            style: Theme.of(context).textTheme.labelSmall,
            textAlign: TextAlign.center,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DotWidget(
              color: ColorManager.primary,
            ),
             SizedBox(
              width: AppSize.s15.w,
            ),
            DotWidget(
              color: ColorManager.lightPrimary,
            ),
          ],
        ),
         SizedBox(
          height: AppSize.s33.h,
        ),
        GlobalButtonWidget(
          width: AppSize.s312.w,
          text: "ابدا",
          onTap: () {
            Navigator.pushNamed(context, SignUpView.id);
          },
        )
      ],
    );
  }
}
