import 'package:flutter/material.dart';
import 'package:theming_example/data/models/story_model.dart';
import 'package:theming_example/presentation/views/widgets/story_item.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(12),
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return StoryItem(
            story: StoryModel(
              name: 'Story ${index + 1}',
              image: 'https://www.koch.com.au/image/large/1131507WH__1.jpg',
            ),
          );
        },
      ),
    );
  }
}
