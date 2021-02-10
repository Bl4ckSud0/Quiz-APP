import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;
  Question(this._question);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      alignment: Alignment.center,
      width: double.infinity,
      child: Text(
        _question,
        style: TextStyle(
            fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
      ),
    );
  }
}
