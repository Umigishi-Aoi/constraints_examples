import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example11 extends StatelessWidget {
  const Example11({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 11',
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
      width: 1000,
      height: 1000,
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
            width: 1000,
            height: 1000,
            color: Colors.red,
          ),
        ),
      ),
      description: '''
CenterがConstrainedBoxに対し、
表示領域まで好きな大きさになることを許します。
ConstrainedBoxは自身のconstraintsを
子に課します。

Containerは70から150の間の大きさでなければなりませんが、
自身は1000の大きさになりたいので、
結果として、最大の150の大きさになります。
''',
    );
  }
}
