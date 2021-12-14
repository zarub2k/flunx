import 'package:flunx/foodlab/models/tab_manager.dart';
import 'package:flunx/foodlab/screens/explore_screen.dart';
import 'package:flunx/foodlab/screens/grocery_screen.dart';
import 'package:flunx/foodlab/screens/recipes_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  // int _selectedIndex = 0;

  static List<Widget> pages = [
    ExploreScreen(),
    RecipesScreen(),
    const GroceryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return _buildConsumer(context);
  }

  Consumer<TabManager> _buildConsumer(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Flunx'),
        ),
        body: pages[tabManager.selectedTab],
        bottomNavigationBar: _buildBottomNavigationBar(context, tabManager),
      );
    });
  }

  BottomNavigationBar _buildBottomNavigationBar(BuildContext context, TabManager tabManager) {
    return BottomNavigationBar(
      selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
      currentIndex: tabManager.selectedTab,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.five_k_plus_outlined),
          label: 'Explore'
        ),
        BottomNavigationBarItem(icon: Icon(Icons.five_k_plus_outlined), label: 'Recipes'),
        BottomNavigationBarItem(icon: Icon(Icons.five_k_plus_outlined), label: 'To Buy')
      ],
      onTap: (index) => _onTap(index, tabManager),
    );
  }

  void _onTap(int index, TabManager tabManager) {
    setState(() {
      // _selectedIndex = value;
      tabManager.goToTab(index);
    });
  }
}