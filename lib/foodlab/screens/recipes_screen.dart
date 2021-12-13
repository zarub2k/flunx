import 'package:flunx/foodlab/api/mock_service.dart';
import 'package:flunx/foodlab/components/recipes_grid_view.dart';
import 'package:flunx/foodlab/models/recipe.dart';
import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
  final mock = MockFoodService();
  RecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mock.getRecipes(),
      builder: (context, AsyncSnapshot<List<Recipe>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return RecipesGridView(recipes: snapshot.data ?? [],);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }
    );
  }
}