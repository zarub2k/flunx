import 'package:flunx/circle_image.dart';
import 'package:flunx/flunx_theme.dart';
import 'package:flutter/material.dart';

class AuthorCard extends StatefulWidget {
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
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorite = false;

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
                imageProvider: widget.imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name, style: FlunxTheme.darkTextTheme.headline2,),
                  Text(widget.title, style: FlunxTheme.darkTextTheme.bodyText1,)
                ],
              ),
            ],
          ),
          IconButton(
            icon: _isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400],
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
              });
            },
          ),
        ],
      ),
    );
  }
}