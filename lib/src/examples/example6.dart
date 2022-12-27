// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example6 extends StatelessWidget {
  const Example6({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 6',
      code: '''
Center(
  child: Container(
    color: Colors.red,
  ),
)
''',
      widget: Center(
        child: Container(
          color: Colors.red,
        ),
      ),
      description: '''表示領域はCenterに対し、
表示領域と同じ大きさになるように強制します。

そのため、Centerは表示領域いっぱいに広がります。
CenterはContainerに対し、
表示領域より小さい条件のもとで好きなサイズになるよう伝えます。
Containerは子を持たず、自信の希望のサイズもないため、
可能な限り大きくなりたいのだと判断し、
結果として、表示領域いっぱいに広がります。
''',
    );
  }
}
