import 'package:flunx/foodlab/api/mock_service.dart';
import 'package:flunx/foodlab/components/today_recipe_list.dart';
import 'package:flunx/foodlab/models/explore_data.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);

  final mockService = MockFoodService();

  @override
  Widget build(BuildContext context) {
    return _buildExploreScreen(context);
  }

  Widget _buildExploreScreen(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];
          return Center(
            child: Container(
              child: TodayRecipeListView(recipes: recipes,),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }
    );
  }
}