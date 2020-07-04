import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You have the best personality ive ever known!';
    } else if (resultScore > 8 && resultScore <= 16) {
      resultText = 'Great you have a beautiful personality';
    } else if (resultScore > 16 && resultScore <= 24) {
      resultText = 'Wow you have a pretty dark tinge in your personality';
    } else if (resultScore > 24) {
      resultText = 'You are the darkest person ive ever analyzed :(';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                decorationColor: Colors.yellow),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz',
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
