import 'dart:convert';

import 'package:flunx/foodlab/models/explore_data.dart';
import 'package:flunx/foodlab/models/recipe.dart';
import 'package:flutter/services.dart';

class MockFoodService {
  Future<ExploreData> getExploreData() async {
    final exploreData = ExploreData();
    return exploreData;
  }

  Future<List<Recipe>> _getRecipes() async {
    //simulate wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    final jsonString = await _load('assets/mock_data/recipes.json');
    final Map<String, dynamic> json = jsonDecode(jsonString);
    final List<Recipe> recipes = <Recipe>[];
    json['recipes'].forEach((value) {
      recipes.add(Recipe.fromJson(value));
    });

    return recipes;
  }

  Future<String> _load(String path) {
    return rootBundle.loadString(path);
  }
}