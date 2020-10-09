import 'package:flutter/material.dart';

class Anwser extends StatelessWidget {
  final String text;
  final void Function() onSelected;

  const Anwser(
    this.text,
    this.onSelected,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(text),
        onPressed: onSelected,
      ),
    );
  }
}
