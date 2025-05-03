import 'package:flutter/material.dart';
import 'package:theming_example/core/theming_helper/app_colors.dart';
import 'package:theming_example/core/theming_helper/app_text_styles.dart';
import 'package:theming_example/presentation/views/widgets/buttom_nav_bar/custom_home_bottom_nav.dart';
import 'package:theming_example/presentation/views/widgets/custom_category_widget.dart';
import 'package:theming_example/presentation/views/widgets/stories_section.dart';
import 'package:theming_example/presentation/views/widgets/toggle_theme_button.dart';

import 'widgets/post_widgets/post_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Scaffold(
      bottomSheet: CustomHomeBottomNav(),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: colors.iconColor,
          ),
          onPressed: () {},
        ),
        actions: [
          ToggleThemeButton(),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          StoriesSection(),
          Row(
            children: [
              CustomCategoryWidget(
                title: 'Category 1',
                icon: Icons.category,
                subtitle: 'Subtitle 1',
                gradientColor: colors.trendingGradientColors,
              ),
              CustomCategoryWidget(
                title: 'Category 1',
                icon: Icons.category,
                subtitle: 'Subtitle 1',
                gradientColor: colors.popularGradientColors,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Trending',
              style:
                  Theme.of(context).extension<AppTextStyles>()!.font20SemiBold,
            ),
          ),
          PostItem(),
        ],
      ),
    );
  }
}
