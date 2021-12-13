enum Importance {
  low, medium, high
}

class GroceryItem {
  final String id;
  final String name;
  final Importance importance;

  GroceryItem({
    required this.id,
    required this.name,
    required this.importance
  });

  GroceryItem copyWith({
    String? id,
    String? name,
    Importance? importance
  }) {
    return GroceryItem(
      id: id ?? this.id,
      name: name ?? this.name,
      importance: importance ?? this.importance
    );
  }
}