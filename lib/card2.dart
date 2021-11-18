import 'package:flunx/author_card.dart';
import 'package:flunx/flunx_theme.dart';
import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

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
            image: AssetImage('assets/card2.jpg'),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Column(
          children: [
            const AuthorCard(
              name: 'Tham',
              title: 'Chief hustler',
              imageProvider: AssetImage('assets/tham.png'),
            ),

            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text('Recipe', style: FlunxTheme.darkTextTheme.headline1,),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 10,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FlunxTheme.darkTextTheme.headline1,
                      )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}