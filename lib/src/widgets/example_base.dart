import 'package:constraints_examples/src/constants.dart';
import 'package:constraints_examples/src/widgets/code_base.dart';
import 'package:constraints_examples/src/widgets/widget_base.dart';
import 'package:flutter/material.dart';

class ExampleBase extends StatelessWidget {
  const ExampleBase({
    super.key,
    required this.code,
    required this.title,
    required this.widget,
    required this.description,
  });

  final String code;
  final String title;
  final Widget widget;
  final String description;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          children: [
            if (constraints.maxWidth > displayCodeWidthThreshold)
              CodeBase(code: code),
            WidgetBase(
              title: title,
              widget: widget,
              description: description,
            )
          ],
        );
      },
    );
  }
}
