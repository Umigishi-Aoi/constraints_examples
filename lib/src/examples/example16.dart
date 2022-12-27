import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example16 extends StatelessWidget {
  const Example16({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExampleBase(
      title: 'Example 16',
      code: '''
UnconstrainedBox(
  child: Container(
    width: double.infinity,
    height: 100,
    color: Colors.red,
  ),
)
''',
      widget: SizedBox.shrink(),
      description: '''
何も表示されませんが、Console上でエラーが出るはずです。

UnconstrainedBoxは、
その子であるContainerが好きなサイズになることを
許しますが、
Containerは無限の大きさを要求します。

Flutterは無限の大きさをレンダリングできないため、
BoxConstraints forces an infinite width
というメッセージと共にエラーとなります。
''',
    );
  }
}
