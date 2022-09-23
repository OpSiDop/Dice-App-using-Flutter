import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(
              fontSize: 22.0,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    LeftDiceNumber = Random().nextInt(6) + 1;
                    RightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$LeftDiceNumber.png'),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  RightDiceNumber = Random().nextInt(6) + 1;
                  LeftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$RightDiceNumber.png'),
            ),
          ),
        ),
      ],
    );
  }
}
