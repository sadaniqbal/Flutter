import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'Text': 'Black', 'Score': 8},
        {'Text': 'Blue', 'Score': 4},
        {'Text': 'Red', 'Score': 6},
        {'Text': 'Green', 'Score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'Text': 'Pink Armadillo', 'Score': 4},
        {'Text': 'Panda', 'Score': 2},
        {'Text': 'Lion', 'Score': 8},
        {'Text': 'Eagle', 'Score': 6},
      ],
    },
    {
      'questionText': 'Who\'s your favourite football player?',
      'answers': [
        {'Text': 'Messi', 'Score': 4},
        {'Text': 'Salah', 'Score': 2},
        {'Text': 'Ibrahimovic', 'Score': 8},
        {'Text': 'Ronaldo', 'Score': 6},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: (Colors.green),
        appBar: AppBar(
          backgroundColor: (Colors.lightGreen),
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
