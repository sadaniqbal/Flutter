import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
  final Function restartHandler;

  Restart(this.restartHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Restart App',
            style: TextStyle(fontSize: 28, color: Colors.white),
            textAlign: TextAlign.center),
        color: Colors.pink,
        onPressed: restartHandler,
      ),
    );
  }
}
