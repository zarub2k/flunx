import 'package:flunx/flunx_theme.dart';
import 'package:flunx/foodlab/models/recipe.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final Recipe recipe;
  const Card1({
    Key? key,
    required this.recipe
  }) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return _buildCard(context);
  }

  Widget _buildCard(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/card1.jpg'),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Stack(
          children: [
            Text(category, style: FlunxTheme.darkTextTheme.bodyText1,),
            Positioned(
              child: Text(recipe.title, style: FlunxTheme.darkTextTheme.headline1,),
              top: 25,
            ),
            Positioned(
              child: Text(description, style: FlunxTheme.darkTextTheme.bodyText1,),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(chef, style: FlunxTheme.darkTextTheme.bodyText1,),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}