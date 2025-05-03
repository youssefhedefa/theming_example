import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theming_example/core/theming_helper/app_colors.dart';
import 'package:theming_example/presentation/views/widgets/buttom_nav_bar/bottom_nav_bar_custom_button.dart';

class CustomHomeBottomNav extends StatefulWidget {
  const CustomHomeBottomNav({super.key});

  @override
  State<CustomHomeBottomNav> createState() => _CustomHomeBottomNavState();
}

class _CustomHomeBottomNavState extends State<CustomHomeBottomNav> {

  int currentIndex = 0;

  _updateIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 22),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: colors.containerShadowColor,
            blurRadius: 20,
            offset: const Offset(0, -4),
            spreadRadius: 2,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: BottomAppBar(
          color: colors.bottomNavigationBarColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavBarCustomButton(
                icon: Icons.home,
                isSelected: currentIndex == 0,
                onPressed: () {
                  _updateIndex(0);
                },
              ),
              BottomNavBarCustomButton(
                icon: Icons.search,
                isSelected: currentIndex == 1,
                onPressed: () {
                  _updateIndex(1);
                },
              ),
              BottomNavBarCustomButton(
                icon: Icons.notifications,
                isSelected: currentIndex == 2,
                onPressed: () {
                  _updateIndex(2);
                },
              ),
              BottomNavBarCustomButton(
                icon: Icons.person,
                isSelected: currentIndex == 3,
                onPressed: () {
                  _updateIndex(3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
