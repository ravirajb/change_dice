import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}



class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rigtDiceNumber = 1;

  void generateDiceNumbers() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rigtDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  generateDiceNumbers();
                  //leftDiceNumber = 5;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  generateDiceNumbers();
                });
              },
              child: Image.asset('images/dice$rigtDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
