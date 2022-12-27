import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

import '../constants.dart';

class CodeBase extends StatelessWidget {
  const CodeBase({super.key, required this.code});

  final String code;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SizedBox(
          width: contentsWidth,
          height: contentsWidth,
          child: HighlightView(
            code,
            language: 'dart',
            theme: githubTheme,
            padding: const EdgeInsets.all(16),
          ),
        ),
      ),
    );
  }
}
