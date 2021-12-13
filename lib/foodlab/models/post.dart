class Post {
  String id;
  String profileImageUrl;
  String comment;
  String foodPicUrl;
  String timestamp;

  Post({
   required this.id,
   required this.profileImageUrl,
   required this.comment,
   required this.foodPicUrl,
   required this.timestamp
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] ?? '',
      profileImageUrl: json['profileImageUrl'] ?? '',
      comment: json['comment'] ?? '',
      foodPicUrl: json['foodPicUrl'] ?? '',
      timestamp: json['timestamp'] ?? ''
    );
  }
}