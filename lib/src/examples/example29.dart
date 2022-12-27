// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example29 extends StatelessWidget {
  const Example29({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 29',
      code: '''
Scaffold(
  body: SizedBox.expand(
    child: Container(
      color: Colors.blue,
      child: Column(
        children: const [
          Text('こんにちは！'),
          Text('今日はいい天気ですね！'),
        ],
      ),
    ),
  ),
)
''',
      widget: Scaffold(
        body: SizedBox.expand(
          child: Container(
            color: Colors.blue,
            child: Column(
              children: const [
                Text('こんにちは！'),
                Text('今日はいい天気ですね！'),
              ],
            ),
          ),
        ),
      ),
      description: '''
Example 28に対して、
もしScaffoldの子の大きさを
Scaffold自身と同じサイズにしたい場合は、
その子をSizedBox.expandでラップします。
''',
    );
  }
}
