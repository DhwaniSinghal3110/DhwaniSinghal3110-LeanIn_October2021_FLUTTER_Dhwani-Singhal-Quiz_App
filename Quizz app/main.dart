import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _indexNum = 0, _score = 0;

  var _questionAnswers = [
    {
      "quesText": "What is the capital of Canada ?",
      "ansText": {"Ottawa": 1, "Canberra": 0, "Rome": 0}
    },
    {
      "quesText": "What is the capital of Netherlands?",
      "ansText": {"Canberra": 0, "Tokyo": 0, "Amsterdam": 1}
    },
    {
      "quesText": "What is the capital of Argentina?",
      "ansText": {"Canberra": 0, "Buenos Aires": 1, "Madrid": 0},
    },
    {
      "quesText": "What is the capital of Spain?",
      "ansText": {"Madrid": 1, "Columbia": 0, "Paris": 0},
    },
    {
      "quesText": "What is the capital of France?",
      "ansText": {"Nuuk": 0, "Paris": 1, "London": 0},
    },
    {
      "quesText": "What is the capital of Australia?",
      "ansText": {"Canberra": 1, "Nuuk": 0, "Malé": 0},
    },
  ];

  void resetQuiz() {
    setState(() {
      _indexNum = 0;
      _score = 0;
    });
  }

  void answerQuestion(String indx) {
    setState(() {
      if (_indexNum < _questionAnswers.length)
        _score += (_questionAnswers[_indexNum]["ansText"] as Map)[indx];

      _indexNum++;
    });

    if (_indexNum > _questionAnswers.length)
      print("Answer Chosen !");
    else
      print("Quiz Over!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: Text("Countries and Capitals"),
        ),
        body: _indexNum < _questionAnswers.length
            ? Quiz(_questionAnswers, answerQuestion, _indexNum)
            : Result(_score, resetQuiz),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Countires and Capitals',
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: const Text('Lets rock it'),
      ),
      body: Center(),
    ),
  );
}
