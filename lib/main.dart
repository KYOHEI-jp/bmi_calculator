import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF6200EA),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.deepPurpleAccent,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
