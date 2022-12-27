// ignore_for_file: use_colored_box

import 'package:flutter/material.dart';

import '../widgets/example_base.dart';

class Example25 extends StatelessWidget {
  const Example25({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleBase(
      title: 'Example 25',
      code: '''
Row(
  children: [
    Expanded(
      child: Container(
        color: Colors.red,
        child: const Text(
          'これはとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとても長い例文です',
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: const Text('ハロー！'),
    ),
  ],
)
''',
      widget: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: const Text(
                'これはとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとてもとても長い例文です',
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Text('ハロー！'),
          ),
        ],
      ),
      description: '''
Rowの子をExpandedで囲むと、
Rowは子を自身の大きさには設定しません。

代わりに、Expandedの大きさを
他の子たちに応じて決定します。
そして、Expandedはその子に
Expandedの大きさになるよう強制します。

言い換えれば、一度Expandedを使用すると、
子の自身の大きさは無関係になり、無視されます。
''',
    );
  }
}
