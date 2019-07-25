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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {}
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite food?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Prueba"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Question(questions[_questionIndex]),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
            ],
          ),
        ),
      ),
    );
  }
}
