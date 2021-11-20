import 'package:flunx/foodlab/screens/explore_screen.dart';
import 'package:flutter/material.dart';
import 'card2.dart';
import 'card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    ExploreScreen(),
    const Card2(),
    const Card3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flunx'),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
      currentIndex: _selectedIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.five_k_plus_outlined),
          label: 'Explore'
        ),
        BottomNavigationBarItem(icon: Icon(Icons.five_k_plus_outlined), label: 'Card'),
        BottomNavigationBarItem(icon: Icon(Icons.five_k_plus_outlined), label: 'Card')
      ],
      onTap: _onTap,
    );
  }

  void _onTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}