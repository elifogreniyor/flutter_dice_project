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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;
    return Center(
      child: Row(
      children: <Widget>[
        Expanded(
          child: TextButton(
          onPressed: () {
          print('Left button got $leftDiceNumber pressed.');
          }, 
          child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
        Expanded(
          child: TextButton(
          onPressed: () {
          print('Right button got pressed.');
          },
          child: Image.asset('images/dice2.png')),
          ),
        ],
      ),
    );
  }
}