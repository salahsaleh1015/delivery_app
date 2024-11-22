


import 'package:delivery_app/features/global_widgets/global_delivery_card_widget.dart';
import 'package:delivery_app/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalDeliveryCardsListWidget extends StatefulWidget {
  const GlobalDeliveryCardsListWidget({super.key});

  @override
  State<GlobalDeliveryCardsListWidget> createState() => _GlobalDeliveryCardsListWidgetState();
}

class _GlobalDeliveryCardsListWidgetState extends State<GlobalDeliveryCardsListWidget> {
  int _selectedIndex = 0;
 // Track the selected index
  void _onCardTap(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
    // Call your function with the clicked item's ID
    _handleItemClick("item_$index");
  }

  void _handleItemClick(String id) {
    // Handle the click event, e.g., navigate or show a dialog
    print("Item clicked: $id");
  }

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.65,
      child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => SizedBox(
            height: AppSize.s10.h,
          ),
          itemBuilder: (context, index) =>
           GlobalDeliveryCardWidget(
            itemId: "item_$index", // Pass unique item IDs
            isSelected: _selectedIndex == index, // Determine if this item is selected
            onTap: () => _onCardTap(index), // Handle tap event
          )),
    );
  }
}
