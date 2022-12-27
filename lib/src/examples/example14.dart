import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example14 extends StatelessWidget {
  const Example14({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 14',
      code: '''
UnconstrainedBox(
  child: Container(
    width: 4000,
    height: 50,
    color: Colors.red,
  ),
)
''',
      widget: Image.asset('assets/images/example14.png'),
      description: '''
表示領域はUnconstrainedBoxに対し、
表示領域と同じ大きさになるように強制します。
しかし、UnconstrainedBoxは、
その子であるContainerが好きなサイズになることを
許します。

残念なことに、今回の場合Containerは4000の大きさで、
UnconstrainedBoxに収めるには大きすぎるため、
UnconstrainedBoxは非常に恐ろしい、
「オーバーフローのワーニング」を表示します。
''',
    );
  }
}
