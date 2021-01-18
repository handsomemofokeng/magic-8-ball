import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: Text("Ask me anything"),
            backgroundColor: Colors.indigo,
          ),
          body: AnswerPage(),
        ),
      ),
    );

class AnswerPage extends StatefulWidget {
  @override
  _AnswerPageState createState() => _AnswerPageState();
}

class _AnswerPageState extends State<AnswerPage> {
  int randomAnswer;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  randomAnswer = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset("images/ball$randomAnswer.png"),
            ),
          ),
        ],
      ),
    );
  }
}
