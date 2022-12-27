import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example19 extends StatelessWidget {
  const Example19({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExampleBase(
      title: 'Example 19',
      code: '''
Center(
  child: FittedBox(
    child: Text('これは例文です'),
  ),
)
''',
      widget: Center(
        child: FittedBox(
          child: Text('これは例文です'),
        ),
      ),
      description: '''
CenterにFittedBoxを入れた場合はどうでしょうか？
CenterはFitterBoxを表示領域の大きさまでの、
好きなサイズになるようにします。

FittedBoxはTextが好きなサイズになるようにし、
自身はTextと同じサイズになるようにします。
FittedBoxとTextが同じサイズになるので、
Textの拡大は起きません。
''',
    );
  }
}
