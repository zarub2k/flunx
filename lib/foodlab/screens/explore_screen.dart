import 'package:flunx/foodlab/api/mock_service.dart';
import 'package:flunx/foodlab/models/explore_data.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);

  final mockService = MockFoodService();

  @override
  Widget build(BuildContext context) {
    return _buildExploreScreen(context);
  }

  Widget _buildExploreScreen(BuildContext context) {
    return FutureBuilder(
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];
          return Center(
            child: Container(
              child: const Text('Placeholder'),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }
    );
  }
}