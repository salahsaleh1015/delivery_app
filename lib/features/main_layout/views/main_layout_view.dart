import 'package:delivery_app/features/global_widgets/global_decorated_bottom_container.dart';
import 'package:delivery_app/features/main_layout/cubit/bottom_nav_cubit.dart';
import 'package:delivery_app/features/main_layout/widgets/bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainLayoutView extends StatelessWidget {
  const MainLayoutView({super.key});
  static String id = 'MainLayoutView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocBuilder<BottomNavCubit, BottomNavStates>(
        builder: (context, state) {
          var cubit = BottomNavCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: GlobalDecoratedBottomContainer(
              child: BottomNavigationBar(
                items: cubit.bottomNavItems,
                onTap: (index) {
                  cubit.changeIndex(index);
                },
                currentIndex: cubit.currentIndex,
              ),
            ),
          );
        },
      ),
    );
  }
}
