import 'package:app_questions/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(QuestiosApp());

class QuestiosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  final perguntas = [
    'Qual é sua cor favorita?',
    'Qual é seu animal favorito?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perguntas"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Question(perguntas[_perguntaSelecionada]),
          RaisedButton(
            onPressed: _responder,
            child: Text("Resposta 1"),
          ),
          RaisedButton(
            onPressed: _responder,
            child: Text("Resposta 2"),
          ),
          RaisedButton(
            onPressed: _responder,
            child: Text("Resposta 3"),
          ),
        ],
      ),
    );
  }
}
