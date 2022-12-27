// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example26 extends StatelessWidget {
  const Example26({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 26',
      code: '''
Row(
  children: [
    Expanded(
      child: Container(
        color: Colors.red,
        child: const Text(
          'これはとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとても長い例文です',
        ),
      ),
    ),
    Expanded(
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
          Expanded(
            child: Container(
              color: Colors.red,
              child: const Text(
                'これはとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとても長い例文です',
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: const Text('ハロー！'),
            ),
          ),
        ],
      ),
      description: '''
Rowの子たちをすべてExpandedで囲むと、
それぞれのExpandedは
そのflexパラメータに比例した大きさになり、
そして、それぞれのExpandedはその子に
Expandedの大きさになるよう強制します。

言い換えればExpandedは、
子たちの好む大きさを無視します。
''',
    );
  }
}
