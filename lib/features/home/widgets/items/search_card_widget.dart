
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchCardWidget extends StatelessWidget {
  const SearchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s55.h,
      width: double.infinity,
      child: Card(
        elevation: AppSize.s5.r,
        color: Colors.white,
        child: Padding(
          padding:  EdgeInsets.all(AppPadding.p8.r),
          child: TextField(

            decoration: InputDecoration(

              hintText: "بحث",
              contentPadding: EdgeInsets.only(bottom: AppPadding.p15.h,),
              hintStyle: Theme.of(context).textTheme.labelSmall,
              prefixIcon: Icon(
                Icons.search,
                size: AppSize.s25.r,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
