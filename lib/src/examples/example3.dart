import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 3',
      code: '''
Center(
  child: Container(
     width: 100,
     height: 100,
     color: Colors.red,
  ),
)
''',
      widget: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
      description: '''表示領域はCenterに対し、
表示領域と同じ大きさになるように強制します。
そのため、Centerは表示領域いっぱいに広がります。

CenterはContainerに対し、
表示領域より小さい条件のもとで好きなサイズになるよう伝えます。
これにより、Containerは100x100の大きさになります。
''',
    );
  }
}
