import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('This is the answer!');
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
            Text('The Question!'),
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
