// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example28 extends StatelessWidget {
  const Example28({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 28',
      code: '''
Scaffold(
  body: Container(
    color: Colors.blue,
    child: Column(
      children: const [
        Text('こんにちは！'),
        Text('今日はいい天気ですね！'),
      ],
    ),
  ),
)
''',
      widget: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Column(
            children: const [
              Text('こんにちは！'),
              Text('今日はいい天気ですね！'),
            ],
          ),
        ),
      ),
      description: '''
表示領域はScaffoldに対し、
表示領域と同じ大きさになるように強制します。
このためScaffoldは表示領域を埋めつくします。
Scaffoldは
Containerに表示領域を超えない
好きなサイズになるよう伝えます。

Containerは子のColumunと同じ大きさに
なろうとし、
Columnは子たちの大きさに応じて
自身の大きさを決定します。
''',
    );
  }
}
