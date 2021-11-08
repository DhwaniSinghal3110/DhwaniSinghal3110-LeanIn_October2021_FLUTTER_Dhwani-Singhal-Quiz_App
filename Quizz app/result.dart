import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuizHandler;

  Result(this.score, this.resetQuizHandler);

  String get resultPhrase {
    String resultText;
    if (score > 4) {
      resultText = 'excellent';
    } else if (score > 2) {
      resultText = 'Good!';
    } else if (score == 1) {
      resultText = 'Looser';
    } else {
      resultText = 'Loser!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 28),
          ),
        ),
        Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            child: Center(
              child: Text(
                score.toString(),
                style: TextStyle(
                  color: Colors.green[300],
                  fontSize: 40,
                  fontFamily: "Monospace",
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        Container(
          child: ButtonTheme(
            minWidth: 180.0,
            height: 50,
            child: RaisedButton(
              child: Text(
                "Play Again",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: resetQuizHandler,
              color: Colors.green[300],
            ),
          ),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
