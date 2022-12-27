import 'package:constraints_examples/src/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../examples/examples.dart';

class ExamplePage extends ConsumerWidget {
  const ExamplePage({super.key, required this.constraints});

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: IndexedStack(
        index: ref.watch(indexProvider),
        children: const [
          Example1(),
          Example2(),
          Example3(),
          Example4(),
          Example5(),
          Example6(),
          Example7(),
          Example8(),
          Example9(),
          Example10(),
          Example11(),
          Example12(),
          Example13(),
          Example14(),
          Example15(),
          Example16(),
          Example17(),
          Example18(),
          Example19(),
          Example20(),
          Example21(),
          Example22(),
          Example23(),
          Example24(),
          Example25(),
          Example26(),
          Example27(),
          Example28(),
          Example29(),
        ],
      ),
    );
  }
}
