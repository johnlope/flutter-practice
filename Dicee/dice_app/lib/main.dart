import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;

  int rightDiceNumber = 1;

  int randomDice(int lastDice) {
    int newDice = Random().nextInt(6) + 1;
    if (lastDice == newDice) newDice = randomDice(lastDice);
    return newDice;
  }

  void randomDiceFaces() {
    leftDiceNumber = randomDice(leftDiceNumber);
    rightDiceNumber = randomDice(rightDiceNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.red.shade400),
              ),
              onPressed: () {
                setState(() {
                  randomDiceFaces();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.red.shade400),
                ),
                onPressed: () {
                  setState(() {
                    randomDiceFaces();
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}
