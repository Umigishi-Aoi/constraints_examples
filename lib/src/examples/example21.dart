import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example21 extends StatelessWidget {
  const Example21({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExampleBase(
      title: 'Example 21',
      code: '''
Center(
  child: Text('これはとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとても長い例文です'),
)
''',
      widget: Center(
        child: Text('これはとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとても長い例文です'),
      ),
      description: '''
FittedBoxを取り除いた場合、
Textは表示領域から最大のwidthを取得し、
表示領域に合うように改行します。
''',
    );
  }
}
