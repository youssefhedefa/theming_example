import 'package:flutter/material.dart';
import 'package:theming_example/core/theming_helper/app_colors.dart';

class PostFooter extends StatefulWidget {
  const PostFooter({super.key});

  @override
  State<PostFooter> createState() => _PostFooterState();
}

class _PostFooterState extends State<PostFooter> {
  bool isMarkedAsFavorite = false;
  bool isMarkedAsSaved = false;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isMarkedAsFavorite = !isMarkedAsFavorite;
                });
              },
              icon: Icon(
                isMarkedAsFavorite ? Icons.favorite : Icons.favorite_border,
                color: isMarkedAsFavorite
                    ? colors?.markedAsFavoriteColor
                    : colors?.iconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send_outlined),
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            setState(() {
              isMarkedAsSaved = !isMarkedAsSaved;
            });
          },
          icon: Icon(
            isMarkedAsSaved ? Icons.bookmark : Icons.bookmark_border,
            color: isMarkedAsSaved
                ? colors?.markedAsSavedColor
                : colors?.iconColor,
          ),
        ),
      ],
    );
  }
}
