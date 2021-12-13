import 'package:flunx/foodlab/components/friend_post_title.dart';
import 'package:flunx/foodlab/models/post.dart';
import 'package:flutter/material.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> posts;
  const FriendPostListView({
    Key? key,
    required this.posts
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Social Chefs', style: Theme.of(context).textTheme.headline1,),
          const SizedBox(height: 16,),
          _buildPostListView(context)
        ],
      ),
    );
  }

  ListView _buildPostListView(BuildContext context) {
    return ListView.separated(
      primary: false,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return FriendPostTitle(post: posts[index]);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
      itemCount: posts.length
    );
  }
}