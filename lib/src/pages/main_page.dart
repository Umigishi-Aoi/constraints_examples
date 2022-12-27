import 'package:flutter/material.dart';

import '../widgets/scrollable_navigation_rail.dart';
import 'example_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
              ExamplePage(constraints: constraints)
            ],
          );
        },
      ),
    );
  }
}
