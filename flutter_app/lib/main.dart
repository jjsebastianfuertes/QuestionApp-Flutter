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
      'questions': 'What\'s the capital of Ecuador?',
      'anwsers': [
        {'text': 'Guayaquil', 'score': 0},
        {'text': 'Cuenca', 'score': 0},
        {'text': 'Galapagos', 'score': 0},
        {'text': 'Quito', 'score': 100}
      ]
    },
    {
      'questions': 'How big are condor\'s wings?',
      'anwsers': [
        {'text': '2 mts', 'score': 100},
        {'text': '8 mts', 'score': 0},
        {'text': '1 mts', 'score': 0},
        {'text': '10 mts', 'score': 0}
      ]
    },
    {
      'questions': 'Where is Montañita beach?',
      'anwsers': [
        {'text': 'Esmeraldas', 'score': 0},
        {'text': 'Guayas', 'score': 100},
        {'text': 'Santa Cruz', 'score': 0},
        {'text': 'Loja', 'score': 0}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
//    print('Answer Chosen! $_questionIndex');
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
              : Result(_totalScore),
        ),
      ),
    );
  }
}
