import 'package:flunx/foodlab/models/grocery_manager.dart';
import 'package:flunx/foodlab/screens/empty_grocery_screen.dart';
import 'package:flunx/foodlab/screens/grocery_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          GroceryManager manager = Provider.of<GroceryManager>(
            context,
            listen: false
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GroceryItemScreen(
                onCreate: (item) {
                  manager.addItem(item);
                  Navigator.pop(context);
                },
                onUpdate: (item) {
                },
              )
            )
          );
        },
      ),
      body: _buildGroceryScreen(context),
    );
  }
  
  Widget _buildGroceryScreen(BuildContext context) {
    return Consumer<GroceryManager>(
        builder: (context, groceryManager, child) {
          if (groceryManager.groceryItems.isNotEmpty) {
            return Container();
          } else {
            return const EmptyGroceryScreen();
          }
        }
    );
  }
}