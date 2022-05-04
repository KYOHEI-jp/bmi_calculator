import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "BMI 計算",
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color(0xFF1DE33),
              borderRadius: BorderRadius.circular(10.0)),
          height: 200.0,
          width: 170.0,
        ));
  }
}
