import 'package:flutter/material.dart';

import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questions': 'What\'s your favorite color?',
      'anwsers': ['Black', 'Red', 'White', 'Blue']
    },
    {
      'questions': 'What\'s your favorite animal?',
      'anwsers': ['Cow', 'Dog', 'Snake', 'Lion']
    },
    {
      'questions': 'What\'s your favorite food?',
      'anwsers': ['Chinesse', 'Italian', 'Mexican', 'Spanish']
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answer Chosen! ${_questionIndex}');
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Question App"),
        ),
        body: Container(
          width: double.infinity,
          child: _questionIndex < _questions.length
              ? Quiz(
                  anwserQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(),
        ),
      ),
    );
  }
}
