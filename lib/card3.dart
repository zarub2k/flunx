import 'package:flunx/flunx_theme.dart';
import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildCard3(context);
  }

  Widget _buildCard3(BuildContext context) {
    return Center(
      child: Container(
        // padding: const EdgeInsets.all(8),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/card3.jpg'),
              fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0))
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    'Recipe Trends',
                    style: FlunxTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(height: 16,),
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 12,
                      children: [
                        Chip(
                          label: Text('Healthy', style: FlunxTheme.darkTextTheme.bodyText1,),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            print('delete');
                          },
                        ),
                        Chip(
                          label: Text('Vegan', style: FlunxTheme.darkTextTheme.bodyText1,),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            print('delete');
                          },
                        ),
                        Chip(
                          label: Text('Carrots', style: FlunxTheme.darkTextTheme.bodyText1,),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                        Chip(
                          label: Text('Greens', style: FlunxTheme.darkTextTheme.bodyText1,),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        )
                      ],
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