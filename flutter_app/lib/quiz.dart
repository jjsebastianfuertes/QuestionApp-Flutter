import 'package:flutter/material.dart';

import 'package:flutter_app/question.dart';
import 'package:flutter_app/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function anwserQuestion;

  Quiz(
      {@required this.questions,
      @required this.anwserQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questions']),
        ...(questions[questionIndex]['anwsers'] as List<String>).map((anwser) {
          return Answer(anwserQuestion, anwser);
        }).toList()
      ],
    );
  }
}
