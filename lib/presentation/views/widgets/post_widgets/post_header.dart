import 'package:flutter/material.dart';
import 'package:theming_example/core/theming_helper/app_colors.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Row(
      spacing: 12,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: colors.storiesGradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              'User Name',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 4),
            Text(
              '2 hours ago',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: colors.primaryColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Text(
            'Follow',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Colors.white
            )
          ),
        ),
      ],
    );
  }
}
