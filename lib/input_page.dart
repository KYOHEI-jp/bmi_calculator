import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

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
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1DE33),
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, label: "male"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1DE33),
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(0xFF1DE33),
              cardChild: Column(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xF02DE99),
                    cardChild: Column(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xF01DE33),
                    cardChild: Column(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
