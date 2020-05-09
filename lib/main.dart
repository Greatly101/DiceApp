import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Dice App'),
            backgroundColor: Colors.red,
          ),
          body: DiceApp(),
        ),
      ),
    );

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  // This widget is the root of your application.

  int leftDiceNumber = 1;
  int rightDiceNumber = 6;

  void genDiceNumber() {
    leftDiceNumber = Random().nextInt(6) + 1; //generate int from 1 to 6
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    genDiceNumber();
                  },
                );
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    genDiceNumber();
                  },
                );
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
