import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example10 extends StatelessWidget {
  const Example10({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 10',
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
      width: 10,
      height: 10,
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
            width: 10,
            height: 10,
            color: Colors.red,
          ),
        ),
      ),
      description: '''
Example 9に対し、
CenterがConstrainedBoxに対し、
表示領域まで好きな大きさになることを許します。
ConstrainedBoxは自身のconstraintsを
子に課します。

Containerは70から150の間の大きさでなければなりませんが、
自身は10の大きさになりたいので、
結果として、最小の70の大きさになります。
''',
    );
  }
}
