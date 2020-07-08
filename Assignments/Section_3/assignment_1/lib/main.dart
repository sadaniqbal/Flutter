import 'package:assignment_1/restartapp.dart';
import 'package:flutter/material.dart';

import './bodytag.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var bodyTagIndex = 0;

  void changeBodyTag() {
    setState(() {
      bodyTagIndex += 1;
    });
    print('Body tag changed');
  }

  void restartApp() {
    setState(() {
      bodyTagIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var bodyTag = [
      'This is the first body tag',
      'This is the second body tag',
    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: (Colors.pink[200]),
        appBar: AppBar(
          backgroundColor: (Colors.pink[100]),
          title: Text('Assignment1',
              style: TextStyle(fontSize: 28, color: Colors.white),
              textAlign: TextAlign.center),
        ),
        body: bodyTagIndex < bodyTag.length
            ? Column(children: <Widget>[
                Text(bodyTag[bodyTagIndex],
                    style: TextStyle(fontSize: 28, color: Colors.white),
                    textAlign: TextAlign.center),
                RaisedButton(
                  child: Text('Change Body Tag',
                      style: TextStyle(fontSize: 28, color: Colors.white),
                      textAlign: TextAlign.center),
                  color: Colors.pink,
                  onPressed: changeBodyTag,
                ),
              ])
            : Restart(restartApp),
      ),
    );
  }
}
