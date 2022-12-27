// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 1',
      code: '''
Container(
  color: Colors.red,
)
''',
      widget: Container(
        color: Colors.red,
      ),
      description: '''ColoredBoxのみ配置した場合、
親の制約により表示領域いっぱいに広がるように強制されます。

このため、ColoredBoxは表示領域を埋め、赤で塗りつぶします。''',
    );
  }
}
