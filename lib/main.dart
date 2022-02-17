import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
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
int rightInitialState = 5;
int leftInitialState = 2;
void rightDiceChanged(){
  rightInitialState = Random().nextInt(6) + 1;
}
void leftDiceChanged(){
  leftInitialState = Random().nextInt(6) + 1;
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                 leftDiceChanged();
                 rightDiceChanged();
                });
              },
              child: Image(
                image: AssetImage('images/dice$leftInitialState.png'),
              ),

            ),
          ),

          Expanded(
            child: FlatButton(
                onPressed: (){
                  setState(() {
                   rightDiceChanged();
                   leftDiceChanged();
                  });
                },
                child: Image.asset('images/dice$rightInitialState.png')
            ),
          ),
        ],
      ),
    );
  }
}



 