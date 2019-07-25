import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Color(0xffFFCD44),
        child: Text('Answer 2'),
        onPressed: selectHandler,
      ),
    );
  }
}
