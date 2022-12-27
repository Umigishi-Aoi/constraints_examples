import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example8 extends StatelessWidget {
  const Example8({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 8',
      code: '''
Center(
  child: Container(
    padding: const EdgeInsets.all(20),
    color: Colors.red,
    child: Container(
      width: 30,
      height: 30,
      color: Colors.green,
    ),
  ),
)
''',
      widget: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.red,
          child: Container(
            width: 30,
            height: 30,
            color: Colors.green,
          ),
        ),
      ),
      description: '''
赤のContainerは自信の希望のサイズはないですが、子を持つため、
子と同じサイズになりたいのだと判断します。
しかし、赤のContainerはパディングを
考慮に入れなければなりません。
このため、赤のContainer30x30の大きさに
パディングを加えた大きさになります。
赤のContainerはパディングのため見えるようになり、
緑のContainerはExample7と同じように
30x30の大きさで表示されます。
''',
    );
  }
}
