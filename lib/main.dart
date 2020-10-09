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

  final _perguntas = const [
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
      'respostas': [
        'Coelho',
        'Cachorro',
        'Macaco',
        'Leão',
      ]
    },
    {
      'texto': 'Qual seu Professor favorito?',
      'respostas': [
        'Luan',
        'Jane',
        'josé',
        'Mike',
      ]
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> anwsers = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;

    return Scaffold(
      body: temPerguntaSelecionada
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Question(_perguntas[_perguntaSelecionada]['texto']),
                ...anwsers.map((t) => Anwser(t, _responder)).toList(),
              ],
            )
          : null,
    );
  }
}
