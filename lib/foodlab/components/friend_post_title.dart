import 'package:flunx/circle_image.dart';
import 'package:flunx/foodlab/models/post.dart';
import 'package:flutter/material.dart';

class FriendPostTitle extends StatelessWidget {
  final Post post;

  const FriendPostTitle({
    Key? key,
    required this.post
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleImage(
          imageProvider: AssetImage(post.profileImageUrl),
          imageRadius: 20,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.comment),
              Text(
                '${post.timestamp} mins ago',
                style: const TextStyle(fontWeight: FontWeight.w700),
              )
            ],
          ),
        )
      ],
    );
  }
}