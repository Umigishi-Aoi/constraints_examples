// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example27 extends StatelessWidget {
  const Example27({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 27',
      code: '''
Row(
  children: [
    Flexible(
      child: Container(
        color: Colors.red,
        child: const Text(
          'これはとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとても長い例文です',
        ),
      ),
    ),
    Flexible(
      child: Container(
        color: Colors.green,
        child: const Text('ハロー！'),
      ),
    ),
  ],
)
''',
      widget: Row(
        children: [
          Flexible(
            child: Container(
              color: Colors.red,
              child: const Text(
                'これはとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとても長い例文です',
              ),
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.green,
              child: const Text('ハロー！'),
            ),
          ),
        ],
      ),
      description: '''
FlexibleのExpandedとの唯一の違いは、
Expandedが子の大きさを自身の大きさに
必ずするのに対し、
Flexibleは子の大きさをFlexible自身と同じか、
自身よりも小さくします。
ExpandedもFlexibleも
サイズを決定する際に
子たちの大きさを無視するのは変わりません。
''',
    );
  }
}
