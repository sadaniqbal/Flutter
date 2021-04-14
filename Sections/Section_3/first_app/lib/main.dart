import 'package:flutter/material.dart';
import 'dart:math';

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
    // {
    //   'questionText': 'What\'s your favourite color?',
    //   'answers': [
    //     {'Text': 'Black', 'Score': 8},
    //     {'Text': 'Blue', 'Score': 4},
    //     {'Text': 'Red', 'Score': 6},
    //     {'Text': 'Green', 'Score': 2},
    //   ],
    // },
    // {
    //   'questionText': 'What\'s your favourite animal?',
    //   'answers': [
    //     {'Text': 'Pink Armadillo', 'Score': 4},
    //     {'Text': 'Panda', 'Score': 2},
    //     {'Text': 'Lion', 'Score': 8},
    //     {'Text': 'Eagle', 'Score': 6},
    //   ],
    // },
    // {
    //   'questionText': 'Who\'s your favourite football player?',
    //   'answers': [
    //     {'Text': 'Messi', 'Score': 4},
    //     {'Text': 'Salah', 'Score': 2},
    //     {'Text': 'Ibrahimovic', 'Score': 8},
    //     {'Text': 'Ronaldo', 'Score': 6},
    //   ],
    // },
    {
      'questionText':
          'It is okay to know and ignore someone who is being cyber bullied online?',
      'answers': [
        {
          'Text': 'Yes its so common, theres nothing to worry about!',
          'Score': 4
        },
        {
          'Text':
              'Yes because it does not involve you and it should stay that way',
          'Score': 2
        },
        {
          'Text':
              'No because it’s not fair on the person who is being cyber bullied to feel cut off',
          'Score': 8
        },
        {'Text': 'No, The person should be helped right away!', 'Score': 6},
      ],
    },
    {
      'questionText': 'It is okay to show information about yourself online?',
      'answers': [
        {'Text': 'Yes as long as it’s nothing important', 'Score': 6},
        {
          'Text': 'No, you do not know who is looking at your information',
          'Score': 8
        },
        {
          'Text':
              'Yes, as long as your profile is private and only your friends can see it',
          'Score': 4
        },
        {'Text': 'Who cares? It’s just some basic details.', 'Score': 2},
      ],
    },
    {
      'questionText':
          'Your friend plans to post a video of you and your mates up on their Facebook page, you suggest to;',
      'answers': [
        {
          'Text':
              'It’s okay, as long as it’s the funny moments not the embarrassing ones',
          'Score': 4
        },
        {
          'Text': 'Tell them not to do it because once it’s up, it stays up.',
          'Score': 6
        },
        {
          'Text':
              'Tell them you don’t care as long as it’s not mentioned you’re in the video',
          'Score': 2
        },
        {
          'Text':
              'Tell them that it’s okay as long as everyone has given their permission for it to be uploaded',
          'Score': 8
        },
      ],
    },
    {
      'questionText':
          'You accidently come across an online porn site; what do you do?',
      'answers': [
        {'Text': 'Go tell a trusted adult.', 'Score': 8},
        {
          'Text': 'Do nothing; simply click out of it and leave it alone.',
          'Score': 6
        },
        {'Text': 'Sit there and watch it.', 'Score': 2},
        {'Text': 'Download it and watch it for later.', 'Score': 4},
      ],
    },
    {
      'questionText': 'What is sexting?',
      'answers': [
        {'Text': 'Sending sexy messages via text.', 'Score': 8},
        {'Text': 'Sending a text to a gender.', 'Score': 2},
        {
          'Text': 'Sending inappropriate messages/images via online/mobile',
          'Score': 6
        },
        {
          'Text':
              'Taking inappropriate images of someone for your own exploitation.',
          'Score': 4
        },
      ],
    },
    {
      'questionText': 'Should I sext?',
      'answers': [
        {'Text': 'Yes', 'Score': 2},
        {'Text': 'Rarely', 'Score': 4},
        {'Text': 'Only with trusted person', 'Score': 6},
        {'Text': 'No', 'Score': 8},
      ],
    },

    {
      'questionText':
          'There is an online company that wishes to have my name and phone number so I can enter in a competition: should I give them my information?',
      'answers': [
        {'Text': 'Yes- The site looks legitimate', 'Score': 4},
        {
          'Text': 'No- I do not see why I need to do this competition',
          'Score': 6
        },
        {'Text': 'No- Why do they need my information?', 'Score': 8},
        {
          'Text':
              'Yes- I don’t care, because I’m easily going to win this competition',
          'Score': 2
        },
      ],
    },
    {
      'questionText':
          "My parents' and I have established rules as to what I can do on the Internet when I'm home, but I'm at a friend's house. Should I go by my parents' rules or do whatever my friend does?",
      'answers': [
        {'Text': 'Stick to your parents rule', 'Score': 6},
        {'Text': 'Do what your friends doing', 'Score': 2},
        {
          'Text': 'Just don’t use the computer- Better to keep it safe.',
          'Score': 4
        },
      ],
    },
    {
      'questionText':
          'You have received an email from your online service provider asking for your password to confirm your account otherwise it will be deleted. What should you do?',
      'answers': [
        {'Text': 'Reply to the email with your password', 'Score': 2},
        {
          'Text': 'Check out the online site and see if its legitimate',
          'Score': 4
        },
        {'Text': 'Just delete it- It’s probably a scam', 'Score': 6},
        {'Text': 'Report it- It’s a scam', 'Score': 8},
      ],
    },
    {
      'questionText':
          'Your friends want to create an online social networking site for you; and they’re asking for you to give them a password to use. What should you do?',
      'answers': [
        {'Text': 'Don’t give them a password', 'Score': 8},
        {'Text': 'Give them one; they’re your mates', 'Score': 4},
        {'Text': 'Give them one and then change it', 'Score': 6},
        {'Text': 'Green', 'Score': 2},
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

  bgcolor() {
    var colors = [
      '#BADA55',
      '#EE543A',
      '#8870FF',
      '#00B5B5',
      '#EEE657',
      '#2C82C9',
      '#249991',
      '#71BA51',
      '#C82647',
      '#CD6B97',
    ];

    for (var i = 0; i < colors.length; i++) {
      return colors[i];
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: (Colors.green),
        appBar: AppBar(
          backgroundColor: (Colors.lightGreen),
          title: Center(child: Text("Cluelez")),
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
