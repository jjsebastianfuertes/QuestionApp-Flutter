import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String anwserText;
  Answer(this.selectHandler, this.anwserText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Color(0xffFFCD44),
        child: Text(anwserText),
        onPressed: selectHandler,
      ),
    );
  }
}
