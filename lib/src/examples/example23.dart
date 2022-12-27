// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example23 extends StatelessWidget {
  const Example23({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 23',
      code: '''
Row(
  children: [
    Container(
      color: Colors.red,
      child: const Text('こんにちは！'),
    ),
    Container(
      color: Colors.green,
      child: const Text('ハロー！'),
    ),
  ],
)
''',
      widget: Row(
        children: [
          Container(
            color: Colors.red,
            child: const Text('こんにちは！'),
          ),
          Container(
            color: Colors.green,
            child: const Text('ハロー！'),
          ),
        ],
      ),
      description: '''
表示領域はRowに対し、
表示領域と同じ大きさになるように強制します。

UnconstrainedBoxと同じように、
Rowは子たちに何もconstraintsを課しません。
そして、子たちが好きなサイズになるようにします。
Rowは子たちを並べて配置し、
余分なスペースは空白のままにします。
''',
    );
  }
}
