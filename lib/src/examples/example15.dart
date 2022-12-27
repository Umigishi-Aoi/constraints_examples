import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example15 extends StatelessWidget {
  const Example15({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 15',
      code: '''
OverflowBox(
  minWidth: 0,
  minHeight: 0,
  maxWidth: 500,
  maxHeight: 500,
  child: Container(
    width: 4000,
    height: 50,
    color: Colors.red,
  ),
)
''',
      widget: OverflowBox(
        minWidth: 0,
        minHeight: 0,
        maxWidth: 500,
        maxHeight: 500,
        child: Container(
          width: 4000,
          height: 50,
          color: Colors.red,
        ),
      ),
      description: '''
表示領域はOverflowBoxに対し、
表示領域と同じ大きさになるように強制します。
そして、OverflowBoxは、
その子であるContainerが好きなサイズになることを
許します。

OverflowBoxはUnconstrainedBoxと似ていますが、
子が用意した領域を超えてもワーニングを出しません。

今回のケースでは、
Containerが4000の大きさをもつため、
OverflowBoxに収まりません。
しかし、OverflowBoxは、
できる限り表示し、ワーニングを出しません。
''',
    );
  }
}
