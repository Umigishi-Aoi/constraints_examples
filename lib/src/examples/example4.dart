import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 4',
      code: '''
Align(
  alignment: Alignment.bottomRight,
  child: Container(
    width: 100,
    height: 100,
    color: Colors.red,
  ),
)
''',
      widget: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
      description: '''Example 3に対しCenterをAlignに変えた例です。
      
AlignはContainerに対し、
表示領域より小さい条件のもとで好きなサイズになるよう伝えます。
Centerと違い中央に配置するのではなく、
alignmentで指定した右下に、
100x100のContainerを配置します。
''',
    );
  }
}
