import 'package:flutter/material.dart';

import 'pages/main_page.dart';

class ConstraintsExamples extends StatelessWidget {
  const ConstraintsExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mirror Todo',
      theme: ThemeData(
        fontFamily: 'MPLUS1',
      ),
      home: const MainPage(),
    );
  }
}
