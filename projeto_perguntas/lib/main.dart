import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal Favorito ?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(children: [
          Text(perguntas[0]),
          RaisedButton(
            child: Text('Resposta1'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('Resposta2'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('Resposta3'),
            onPressed: null,
          ),
        ]),
      ),
    );
  }
}
