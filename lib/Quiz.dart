import 'package:flutter/material.dart';
import 'package:quizapp/Answer.dart';
import 'package:quizapp/Question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ques;
  final int _counter;
  final Function _incrementCounter;
  Quiz(this.ques, this._counter, this._incrementCounter);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(ques[_counter]['questionText']),
        ...(ques[_counter]['Answers'] as List<String>).map((ans) {
          return Answer(ans, _incrementCounter);
        }).toList()
      ],
    );
  }
}
