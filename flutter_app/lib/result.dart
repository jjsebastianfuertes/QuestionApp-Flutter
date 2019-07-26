import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 200) {
      resultText = 'Try again! your score: $resultScore/300';
    } else {
      resultText = 'You did it! your score: $resultScore/300';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          RaisedButton(
            child: Text(
              'Restart quiz',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
