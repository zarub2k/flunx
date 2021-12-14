import 'package:flunx/foodlab/models/grocery_item.dart';
import 'package:flutter/material.dart';

class GroceryItemScreen extends StatefulWidget {
  const GroceryItemScreen({
    Key? key,
    required this.onCreate,
    required this.onUpdate
  }) : super(key: key);

  final Function(GroceryItem) onCreate;
  final Function(GroceryItem) onUpdate;

  @override
  State<StatefulWidget> createState() {
    return _GroceryItemScreenState();
  }
}

class _GroceryItemScreenState extends State<GroceryItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }
  
}