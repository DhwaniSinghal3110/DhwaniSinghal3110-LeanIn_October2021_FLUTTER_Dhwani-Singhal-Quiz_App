import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text(
          questionText,
          style: TextStyle(
            color: Colors.green[500],
            fontSize: 28,
            fontFamily: "Monospace",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
