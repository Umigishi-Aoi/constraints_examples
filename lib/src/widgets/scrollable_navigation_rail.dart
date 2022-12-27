import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../providers.dart';

class ScrollableNavigationRail extends ConsumerWidget {
  const ScrollableNavigationRail({super.key, required this.displayWidth});

  final double displayWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: IntrinsicHeight(
        child: NavigationRail(
          destinations: [
            for (var i = 0; i < 29; i++)
              NavigationRailDestination(
                icon: displayWidth > displayWidthThreshold
                    ? const Icon(Icons.bookmark)
                    : Text(
                        '${i + 1}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: ref.watch(indexProvider) == i
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                label: Text('Example ${i + 1}'),
              ),
          ],
          selectedIndex: ref.watch(indexProvider),
          extended: displayWidth > displayWidthThreshold,
          onDestinationSelected: (value) {
            ref.read(indexProvider.notifier).state = value;
          },
        ),
      ),
    );
  }
}
