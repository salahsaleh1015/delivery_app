


import 'package:delivery_app/features/delivery/views/delivery_view.dart';
import 'package:delivery_app/features/home/view/home_view.dart';
import 'package:delivery_app/features/main_layout/widgets/bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavStates> {
  BottomNavCubit() : super(BottomNavInitialState());

  static BottomNavCubit get(context)=>BlocProvider.of(context);
  int currentIndex = 0;


  void changeIndex(int index) {
    currentIndex = index;
    emit(BottomNavChangeState());
  }


  List<BottomNavigationBarItem> bottomNavItems = const  [
    BottomNavigationBarItem(
        icon: BottomNavBarItemWidget(
          icon: FontAwesomeIcons.house,
        ),
        label: "الرئيسية"),
    BottomNavigationBarItem(
        icon: BottomNavBarItemWidget(
          icon: Icons.delivery_dining,
        ),
        label: "الديلفرات"),
    BottomNavigationBarItem(
        icon: BottomNavBarItemWidget(
          icon: Icons.chat,
        ),
        label: "الدردشات"),
    BottomNavigationBarItem(
        icon: BottomNavBarItemWidget(
          icon: Icons.person,
        ),
        label: "الحساب"),
  ];

  List<Widget> screens = [
    HomeView(),
    DeliveryView(),
    Container(),
    Container()
  ];

}
