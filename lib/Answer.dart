import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _ans;
  final Function _increment;
  Answer(this._ans, this._increment);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,
        onPressed: _increment,
        child: Text(
          _ans,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
