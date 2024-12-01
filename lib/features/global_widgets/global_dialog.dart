import 'package:delivery_app/features/global_widgets/global_button_widget.dart';
import 'package:delivery_app/features/global_widgets/global_secondary_button.dart';
import 'package:delivery_app/features/global_widgets/global_text_field_widget.dart';
import 'package:delivery_app/resources/colors_manager.dart';
import 'package:delivery_app/resources/font_manager.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> showCustomDialog(
  BuildContext context,
) {
  return showDialog<void>(
    context: context,
    barrierDismissible:
        true, // User can dismiss the dialog by tapping outside of it
    builder: (BuildContext context) {
      return AlertDialog(

        contentPadding: EdgeInsets.all(AppPadding.p8.r),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "تغيير موقع التوصيل",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: FontSize.s22),
                ),
                SizedBox(
                  width: AppSize.s70.w,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: ColorManager.secondaryTextColor,
                    ))
              ],
            ),
            SizedBox(
              height: AppSize.s10.h,
            ),
            Divider(
              thickness: 1,
              color: ColorManager.secondaryTextColor,
            ),

            SizedBox(
              height: AppSize.s10.h,
            ),
        Row(
          children: [
            Text(
              "موقع التوصيل: ",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text("مدينة 6 أكتوبر، محافظة الجيزة",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium)),
          ],
        ),
            SizedBox(
              height: AppSize.s20.h,
            ),
            Text(
              "موقعك الان بالتفصيل",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: AppSize.s20.h,
            ),
            GlobalTextFieldWidget(
              height: AppSize.s100.h,
              hintText: "أدخل موقعك الان بالتفصيل",
              textInputType: TextInputType.multiline,
            ),
          ],
        ),
        actions: <Widget>[
          Row(
            children: [
              GlobalSecondaryButton(
                text: "إالغاء",
                width: MediaQuery.of(context).size.width * 0.32,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              GlobalButtonWidget(
                onTap: () {},
                width: MediaQuery.of(context).size.width * 0.32,
                text: "تغيير",
              ),
            ],
          )
        ],
      );
    },
  );
}
