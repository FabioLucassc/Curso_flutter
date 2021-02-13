import 'package:flutter/material.dart';
import 'package:projeto_perguntas/Resultado.dart';
import './Resultado.dart';
import './Questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  //Indice da pergunta
  var _perguntaSelecionada = 0;

  //Map - perguntas e respostas
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é o seu professor Favorito?',
      'respostas': ['Maria', 'João', 'Léo', 'Pedro'],
    }
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  //Aumenta o indice
  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
      print(_perguntaSelecionada);
    }
  }

  //reiniciar o app
  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    //List de String pergando as respostas de acordo com indice

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
