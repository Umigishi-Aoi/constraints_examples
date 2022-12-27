import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example20 extends StatelessWidget {
  const Example20({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExampleBase(
      title: 'Example 20',
      code: '''
Center(
  child: FittedBox(
    child: Text('これはとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとても長い例文です'),
  ),
)
''',
      widget: Center(
        child: FittedBox(
          child: Text('これはとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとても長い例文です'),
        ),
      ),
      description: '''
Textが非常に長い場合はどうなるでしょうか？

FittedBoxはTextと同じサイズになろうとしますが、
表示領域より大きいサイズになることはできません。
そのため表示領域を考慮して、
表示領域に収まるようにTextのサイズを小さくします。
''',
    );
  }
}
