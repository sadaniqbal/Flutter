import 'package:flutter/material.dart';

class BodyTag extends StatelessWidget {
  final String bodyTag;
  final bodyTagIndex;
  BodyTag(this.bodyTag, this.bodyTagIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        bodyTag[bodyTagIndex],
        style: TextStyle(fontSize: 28, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
