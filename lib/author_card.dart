import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'Circle_image.dart';

class AuthorCard extends StatelessWidget {
  // 1
  final String authorName;
  final String title;
  final ImageProvider imageProvider;
 const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    required this.imageProvider,  // Ensure 'required' is here
  });
  // 2
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(16),
      // child: Row(
      // children: [],
      padding: const EdgeInsets.all(16),
      child: Row(
        // 3: add alignment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 1
          Row(children: [
            CircleImage(imageProvider: imageProvider, imageRadius: 28),
            // 2
            const SizedBox(width: 8),
            // 3
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  authorName,
                  style: FooderlichTheme.lightTextTheme.displayMedium,
                ),
                Text(
                  title,
                  style: FooderlichTheme.lightTextTheme.displaySmall,
                )
              ],
            ),
          ]),
          // 2: add IconButton
          IconButton(
              // 4
              icon: const Icon(Icons.favorite_border),
              iconSize: 30,
              color: Colors.grey[400],
              // 5
              onPressed: () {
                const snackBar = SnackBar(content: Text('Press Favorite'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }),
        ],
      ),
    );
  }
}
