import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example13 extends StatelessWidget {
  const Example13({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 13',
      code: '''
UnconstrainedBox(
  child: Container(
    width: 20,
    height: 50,
    color: Colors.red,
  ),
)
''',
      widget: UnconstrainedBox(
        child: Container(
          width: 20,
          height: 50,
          color: Colors.red,
        ),
      ),
      description: '''
表示領域はUnconstrainedBoxに対し、
表示領域と同じ大きさになるように強制します。
しかし、UnconstrainedBoxは、
その子であるContainerが好きなサイズになることを
許します。
''',
    );
  }
}
