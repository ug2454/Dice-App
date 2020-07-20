import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.blue,
    appBar: AppBar(
      title: Text("Dicee"),
      centerTitle: true,
      backgroundColor: Colors.blue[900],
    ),
    body: DicePage(),
  )));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber1 = 1;
  int diceNumber2 = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$diceNumber1.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$diceNumber2.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 150.0,
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                diceNumber1 = randomNumber(diceNumber1);
                diceNumber2 = randomNumber(diceNumber2);
              });
              print(diceNumber1);
              print(diceNumber2);
            },
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Press to Roll Dice!!!',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

int randomNumber(dice) {
  return dice = Random().nextInt(6) + 1;
}
