import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  callAction() {}
  mapAction() {}
  shareAction() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      brightness: Brightness.dark
      ),
        home: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('Manipulando Temas')),
            ),
            body: Column(children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text('Olá Mundo'),

              )
            ])));
  }
}