import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text('Dicee')),
        ),
        body: Dice(),
      ),
    ),
  );
}


class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int left=1;
  int right=1;
  void changeDiceFace(){
    setState(() {
      left = Random().nextInt(6)+1;
      right=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
               changeDiceFace();

              },
              child: Image(
                image:AssetImage ('images/dice$left.png'),

              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image(
                image:AssetImage ('images/dice$right.png'),

              ),
            ),
          ),
        ],
      ),
    );
  }
}



