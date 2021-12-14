import 'package:flunx/foodlab/models/grocery_item.dart';
import 'package:flutter/material.dart';

class GroceryManager extends ChangeNotifier {
  final _groceryItems = <GroceryItem>[];
  List<GroceryItem> get groceryItems => List.unmodifiable(_groceryItems);

  void addItem(GroceryItem item) {
    _groceryItems.add(item);
    notifyListeners();
  }

  void updateItem(GroceryItem item, int index) {
    _groceryItems[index] = item;
    notifyListeners();
  }

  void removeItem(int index) {
    _groceryItems.removeAt(index);
    notifyListeners();
  }
}