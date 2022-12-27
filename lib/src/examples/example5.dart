import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 5',
      code: '''
Center(
  child: Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.red,
  ),
)
''',
      widget: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
        ),
      ),
      description: '''表示領域はCenterに対し、
表示領域と同じ大きさになるように強制します。
そのため、Centerは表示領域いっぱいに広がります。

CenterはContainerに対し、
表示領域より小さい条件のもとで好きなサイズになるよう伝えます。
これにより、Containerは上限なく大きくなりたいですが、
表示領域より大きくなることはできません。
結果として、Containerは表示領域いっぱいに広がります。
''',
    );
  }
}
