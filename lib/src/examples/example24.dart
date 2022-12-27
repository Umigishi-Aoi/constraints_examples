// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example24 extends StatelessWidget {
  const Example24({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 24',
      code: '''
Row(
  children: [
    Container(
      color: Colors.red,
      child: const Text('これはとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとても長い例文です'),
    ),
    Container(
      color: Colors.green,
      child: const Text('ハロー！'),
    ),
  ],
)
''',
      widget: Image.asset('assets/images/example24.png'),
      description: '''
Rowは子たちに何もconstraintsを課さないので、
Rowの利用可能な大きさに、
子たちが大きすぎて収まらない可能性は
十分にあります。
UnconstrainedBoxと同じように、
Rowは「オーバーフローのワーニング」を表示します。
''',
    );
  }
}
