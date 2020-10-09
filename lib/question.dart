import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  const Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
