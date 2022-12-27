import 'package:constraints_examples/src/constants.dart';
import 'package:flutter/material.dart';

class WidgetBase extends StatelessWidget {
  const WidgetBase({
    super.key,
    required this.title,
    required this.widget,
    required this.description,
  });

  final String title;
  final Widget widget;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraint) {
          final width = constraint.maxWidth < contentsWidth
              ? constraint.maxWidth
              : contentsWidth;
          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    width: width,
                    height: width,
                    child: Container(
                      color: Colors.blue[100],
                      constraints: const BoxConstraints.tightFor(
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      child: widget,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(description),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
