

import 'package:delivery_app/features/home/widgets/items/vendor_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/values_manager.dart';
class VendorListWidget extends StatelessWidget {
  const VendorListWidget({super.key, required this.axis, this.verticalSpace, this.separatorHeight, this.itemWidth});
final Axis axis;
final double? verticalSpace;
  final double? separatorHeight;
  final double?itemWidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      width: double.infinity,
      height: verticalSpace ??AppSize.s315.h,
      child: ListView.separated(
        separatorBuilder: (context, index) =>  SizedBox(width: AppSize.s10.w,height:separatorHeight??0 ,),
        scrollDirection:axis,
        itemCount: 10,
        itemBuilder: (context, index) => VendorItemWidget(
          itemWidth: itemWidth,
        ),
      ),
    );
  }
}
