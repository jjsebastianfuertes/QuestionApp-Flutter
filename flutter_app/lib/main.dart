import 'package:flutter/material.dart';
import 'package:flutter_app/question.dart';
import 'package:flutter_app/answer.dart';

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
  final questions = const [
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
    if (_questionIndex < questions.length) {
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
          child: Column(
            children: <Widget>[
              Question(questions[_questionIndex]['questions']),
              ...(questions[_questionIndex]['anwsers'] as List<String>)
                  .map((anwser) {
                return Answer(_answerQuestion, anwser);
              }).toList()
            ],
          ),
        ),
      ),
    );
  }
}
