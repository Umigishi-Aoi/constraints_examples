import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example22 extends StatelessWidget {
  const Example22({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExampleBase(
      title: 'Example 22',
      code: '''
FittedBox(
  child: Container(
    width: double.infinity,
    height: 20,
    color: Colors.red,
  ),
)
''',
      widget: SizedBox.shrink(),
      description: '''
FittedBoxは調整できるウィジェットは、
有限の大きさを持つもののみです。
そのため、
今回の例では画面になにも表示されず、
コンソール上でエラーが表示されます。
''',
    );
  }
}
