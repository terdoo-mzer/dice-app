import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(const DicePage());
}



class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;
  void setDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        appBar: AppBar(
          title: const Text('Dicer'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Center(
          child: Row(
            children:  [
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        setDice();
                        print("Left button got pressed");
                      },
                      child: Image.asset("images/dice$leftDiceNumber.png")
                  )
              ),
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        setDice();
                        print("Right button got pressed");
                      },
                      child: Image.asset("images/dice$rightDiceNumber.png")
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
