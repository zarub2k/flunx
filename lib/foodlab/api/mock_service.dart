import 'dart:convert';

import 'package:flunx/foodlab/models/explore_data.dart';
import 'package:flunx/foodlab/models/post.dart';
import 'package:flunx/foodlab/models/recipe.dart';
import 'package:flutter/services.dart';

class MockFoodService {
  Future<ExploreData> getExploreData() async {
    final List<Recipe> recipes = await _getRecipes();
    final List<Post> posts = await _getPosts();
    final exploreData = ExploreData(recipes, posts);
    return exploreData;
  }

  Future<List<Recipe>> getRecipes() async {
    return await _getRecipes();
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

  Future<List<Post>> _getPosts() async {
    //simulate wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    final jsonString = await _load('assets/mock_data/friends_feed.json');
    final Map<String, dynamic> json = jsonDecode(jsonString);
    final List<Post> posts = <Post>[];
    json['feeds'].forEach((value) {
      posts.add(Post.fromJson(value));
    });

    return posts;
  }

  Future<String> _load(String path) {
    return rootBundle.loadString(path);
  }
}