import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 2',
      code: '''
Container(
  width: 100,
  height: 100,
  color: Colors.red,
)
''',
      widget: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      description: '''赤のContainerは100x100の大きさになりたいですが、できません。
なぜなら、
親が表示領域と同じ大きさとなるように強制するからです。

このため、
Containerは表示領域いっぱいに広がり、赤で塗りつぶされます。
''',
    );
  }
}
