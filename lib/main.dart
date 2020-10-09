import 'package:app_questions/anwser.dart';
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
  }

  final List<Map<String, Object>> perguntas = [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        'Azul',
        'Preto',
        'Vermelho',
        'Branco',
      ]
    },
    {
      'texto': 'Qual seu animal favorito?',
      'resposta': [
        'Coelho',
        'Cachorro',
        'Macaco',
        'Leão',
      ]
    },
    {
      'texto': 'Qual seu Professor favorito?',
      'resposta': [
        'Luan',
        'Jane',
        'josé',
        'Mike',
      ]
    },
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
          Question(perguntas[_perguntaSelecionada]['texto']),
          Anwser('Resposta1', _responder),
          Anwser('Resposta1', _responder),
          Anwser('Resposta1', _responder),
        ],
      ),
    );
  }
}
