import 'package:flunx/circle_image.dart';
import 'package:flunx/flunx_theme.dart';
import 'package:flutter/material.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({
    Key? key,
    required this.name,
    required this.title,
    this.imageProvider
  }) : super(key: key);

  final String name;
  final String title;
  final ImageProvider? imageProvider;
  @override
  Widget build(BuildContext context) {
    return _buildAuthorCard(context);
  }

  Widget _buildAuthorCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: FlunxTheme.darkTextTheme.headline2,),
                  Text(title, style: FlunxTheme.darkTextTheme.bodyText1,)
                ],
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            iconSize: 30,
            color: Colors.grey[400],
            onPressed: () {
              const snackBar = SnackBar(content: Text('Fav Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}