import 'package:flunx/foodlab/models/tab_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset('assets/pics/empty.jpg'),
            )
          ),
          const SizedBox(height: 16,),
          Text(
            'No Groceries',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 16,),
          Text(
            'Tap the + to add more',
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),
          MaterialButton(
            textColor: Colors.white,
            child: const Text('Browse Recipes'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)
            ),
            onPressed: () {
              Provider.of<TabManager>(context, listen: false).goToRecipes();
            },
          ),
        ],
      ),
    );
  }
}