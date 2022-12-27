import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example17 extends StatelessWidget {
  const Example17({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 17',
      code: '''
UnconstrainedBox(
  child: LimitedBox(
    maxWidth: 100,
    child: Container(
      width: double.infinity,
      height: 100,
      color: Colors.red,
    ),
  ),
)
''',
      widget: UnconstrainedBox(
        child: LimitedBox(
          maxWidth: 100,
          child: Container(
            width: double.infinity,
            height: 100,
            color: Colors.red,
          ),
        ),
      ),
      description: '''
Example 17ではエラーは起きません。
LimitedBoxがUnconstrainedBoxに対し、
有限の大きさを与えるからです。
今回の例では最大100の大きさを与えています。

UnconstrainedBoxをCenterに置き換えると、
LimitedBoxは
無限のconstraintsが与えられた時のみ
制限を与えるため、
制限は適用されません。
このため、Containerは
100を超える大きさになります。

これはLimitedBoxとConstraintBoxの違いを
表しています。
''',
    );
  }
}
