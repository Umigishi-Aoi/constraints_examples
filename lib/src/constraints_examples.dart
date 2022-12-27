import 'package:flutter/material.dart';

import 'pages/main_page.dart';

class ConstraintsExamples extends StatelessWidget {
  const ConstraintsExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
