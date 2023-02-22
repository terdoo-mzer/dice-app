import 'package:flutter/material.dart';

void main() {
  return runApp(const DicePage());
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Text(
            "Hey!!!",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}