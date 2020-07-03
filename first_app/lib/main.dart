import 'package:flutter/material.dart';

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
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: (Colors.green),
        appBar: AppBar(
          backgroundColor: (Colors.lightGreen),
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(0)),
            Text(questions[1]),
            Text(questions[questionIndex]),
            RaisedButton(
                child: Text('Answer 1'),
                color: Colors.lightGreen,
                onPressed: answerQuestion),
            RaisedButton(
                child: Text('Answer 2'),
                color: Colors.lightGreen,
                onPressed: () => print('Answer 2')),
            RaisedButton(
                child: Text('Answer 3'),
                color: Colors.lightGreen,
                onPressed: () {
                  //....Anonymous
                  print('Answer 3');
                }),
          ],
        ),
      ),
    );
  }
}
