// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example7 extends StatelessWidget {
  const Example7({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 7',
      code: '''
Center(
  child: Container(
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
          color: Colors.red,
          child: Container(
            width: 30,
            height: 30,
            color: Colors.green,
          ),
        ),
      ),
      description: '''表示領域はCenterに対し、
表示領域と同じ大きさになるように強制します。
そのため、Centerは表示領域いっぱいに広がります。

Centerは赤のContainerに対し、
表示領域より小さい条件のもとで好きなサイズになるよう伝えます。
赤のContainerは自信の希望のサイズはないですが、子を持つため、
子と同じサイズになりたいのだと判断します。

赤のContainerは緑のContainerに対し、
表示領域より小さい条件のもとで好きなサイズになるよう伝えます。

緑のContainerは30x30の大きさになりたいです。
赤のContainerは子の大きさになりたいので、
30x30の大きさになります。
緑のContainerが赤のContainerを覆い尽くすため、
赤色は見えなくなります。
''',
    );
  }
}
