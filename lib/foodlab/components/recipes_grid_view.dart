import 'package:flunx/foodlab/components/recipe_thumbnail.dart';
import 'package:flunx/foodlab/models/recipe.dart';
import 'package:flutter/material.dart';

class RecipesGridView extends StatelessWidget {
  final List<Recipe> recipes;

  const RecipesGridView({
    Key? key,
    required this.recipes
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16
      ),
      child: GridView.builder(
        itemCount: recipes.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          return RecipeThumbnail(recipe: recipes[index]);
        }
      ),
    );
  }
}