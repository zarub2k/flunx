import 'package:flunx/foodlab/components/card1.dart';
import 'package:flunx/foodlab/models/recipe.dart';
import 'package:flutter/material.dart';

class TodayRecipeListView extends StatelessWidget {
  final List<Recipe> recipes;
  const TodayRecipeListView({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipes of the day',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 16,),
          Container(
            height: 400,
            color: Colors.transparent,
            child: _buildListView(context),
          )
        ],
      ),
    );
  }
  
  Widget _buildListView(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final recipe = recipes[index];
        return _buildCard(context, recipe);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 16,);
      },
      itemCount: recipes.length
    );
  }

  Widget _buildCard(BuildContext context, Recipe recipe) {
    return Card1(recipe: recipe);
  }
}