import 'package:flutter/material.dart';
import 'package:theming_example/core/theming_helper/app_colors.dart';

class BottomNavBarCustomButton extends StatelessWidget {
  const BottomNavBarCustomButton(
      {super.key, this.isSelected = false, required this.icon, this.onPressed});

  final bool? isSelected;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Expanded(
      child: IconButton(
        onPressed: () {
          if (onPressed != null) {
            onPressed!();
          }
        },
        icon: Icon(
          icon,
          size: 30,
          color:
          isSelected! ? colors.bottomNavigationBarSelectedItemColor : colors.bottomNavigationBarUnselectedItemColor,
        ),
      ),
    );
  }
}
