import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:theming_example/core/theming_helper/app_colors.dart';
import 'package:theming_example/data/models/story_model.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.story,
  });

  final StoryModel story;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Column(
      spacing: 6,
      children: [
        Container(
          width: 80,
          height: 80,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: colors.storiesGradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: CachedNetworkImage(
            imageUrl: story.image,
            imageBuilder: (context, imageProvider) {
              return _imageBuilder(
                context,
                CircleAvatar(
                  backgroundColor: colors.scaffoldBackgroundColor,
                  backgroundImage: imageProvider,
                ),
              );
            },
            placeholder: (context, url) {
              return _imageBuilder(
                context,
                const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
            errorWidget: (context, url, error) {
              return _imageBuilder(context, const Icon(Icons.error,),);
            },
          ),
        ),
        Text(
          story.name,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }

  _imageBuilder(BuildContext context, Widget child) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: colors.scaffoldBackgroundColor,
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }

}
