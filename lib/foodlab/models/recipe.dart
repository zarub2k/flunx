class Recipe {
  String id;
  String title;
  String dishImage;
  String duration;

  Recipe({
    required this.id,
    required this.title,
    required this.dishImage,
    required this.duration
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'] as String,
      title: json['title'] as String,
      dishImage: json['dishImage'] as String,
      duration: json['duration'] as String
    );
  }
}