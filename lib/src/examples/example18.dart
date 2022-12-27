import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example18 extends StatelessWidget {
  const Example18({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExampleBase(
      title: 'Example 18',
      code: '''
FittedBox(
  child: Text('これは例文です'),
)
''',
      widget: FittedBox(
        child: Text('これは例文です'),
      ),
      description: '''
表示領域はFittedBoxに対し、
表示領域と同じ大きさになるように強制します。
Textは
自身のテキスト量とフォントサイズ等に応じた
ある自然なwidth
(intrinsic width)を持っています。

FittedBoxはTextに対し、
好きなサイズになるようにします。
しかしTextが大きさをFittedBoxに伝えた後、
FittedBoxはTextの大きさを
可能な大きさまで大きくします。
''',
    );
  }
}
