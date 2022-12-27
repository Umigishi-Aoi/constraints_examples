import 'package:flutter/material.dart';

import '../widgets/scrollable_navigation_rail.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Constraints Examples'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              ScrollableNavigationRail(
                displayWidth: constraints.maxWidth,
              ),
            ],
          );
        },
      ),
    );
  }
}
