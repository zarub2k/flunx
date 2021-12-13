import 'package:flunx/foodlab/models/post.dart';
import 'package:flunx/foodlab/models/recipe.dart';

class ExploreData {
  ExploreData(this.todayRecipes, this.posts);
  final List<Recipe> todayRecipes;
  final List<Post> posts;
}