import 'package:flutter/material.dart';
import 'package:theming_example/core/theming_helper/app_colors.dart';
import 'package:theming_example/presentation/views/widgets/post_widgets/post_body.dart';
import 'package:theming_example/presentation/views/widgets/post_widgets/post_footer.dart';
import 'package:theming_example/presentation/views/widgets/post_widgets/post_header.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: colors.surfaceContainerColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: colors.containerShadowColor,
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          PostHeader(),
          PostBody(),
          PostFooter(),
        ],
      ),
    );
  }
}
