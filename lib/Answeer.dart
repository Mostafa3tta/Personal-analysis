import 'package:flutter/material.dart';

class Answeer extends StatelessWidget {
  final String answerText;
  final Function x;

  const Answeer(this.x , this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          child: Text(
            answerText,
            style: TextStyle(fontSize: 20,),
          ),
          onPressed: x,
        ));
  }
}
