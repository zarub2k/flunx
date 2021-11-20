import 'package:flunx/foodlab/api/mock_service.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);

  final mockService = MockFoodService();

  @override
  Widget build(BuildContext context) {
    return _buildExploreScreen(context);
  }

  Widget _buildExploreScreen(BuildContext context) {
    return const Center(
      child: Text('Explore screen'),
    );
  }
}