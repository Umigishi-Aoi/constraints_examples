import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example12 extends StatelessWidget {
  const Example12({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 12',
      code: '''
Center(
  child: ConstrainedBox(
    constraints: const BoxConstraints(
      minWidth: 70,
      minHeight: 70,
      maxWidth: 150,
      maxHeight: 150,
    ),
    child: Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
  ),
)
''',
      widget: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 70,
            minHeight: 70,
            maxWidth: 150,
            maxHeight: 150,
          ),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ),
      ),
      description: '''
CenterがConstrainedBoxに対し、
表示領域まで好きな大きさになることを許します。
ConstrainedBoxは自身のconstraintsを
子に課します。

Containerは70から150の間の
constraintsを課されていますが
自身は100の大きさになりたいので、
結果として、constraintsを満たした
100の大きさになります。
''',
    );
  }
}
