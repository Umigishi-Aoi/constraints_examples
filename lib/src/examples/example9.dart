import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example9 extends StatelessWidget {
  const Example9({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 9',
      code: '''
ConstrainedBox(
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
)
''',
      widget: ConstrainedBox(
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
      description: '''
Containerが70と150の間の大きさになると
予想するかもしれませんが、
それは違います。
ConstrainedBoxは親から受け取ったconstraintsから、
追加のconstraintsを課すだけです。

表示領域はConstrainedBoxに対し
表示領域と同じ大きさになるように強制します。
ConstrainedBoxは自身のconstraintsを無視し、
Containerに対し
表示領域と同じ大きさになるように強制します。
''',
    );
  }
}
