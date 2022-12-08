import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  callAction() {}
  mapAction() {}

  shareAction() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('Meu Primeiro App')),
            ),
            body: Column(children: [
              Image(image: AssetImage('assets/muro.jpg')),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Muro das Lamentações',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text('Jerusalem, Israel',
                          style: TextStyle(fontSize: 16, color: Colors.grey))
                    ],
                  )),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.blue),
                      Text('9.8')
                    ],
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Button(
                      icon: Icons.call,
                      text: 'Ligar',
                      onPress: callAction,
                    ),
                    Button(
                      icon: Icons.location_on,
                      text: 'Mapa',
                      onPress: mapAction,
                    ),
                    Button(
                      icon: Icons.share,
                      text: 'Compartilhar',
                      onPress: shareAction,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, o Grande no lugar do Templo de Jerusalém inicial.',
                  style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                ),
              )
            ])));
  }
}

class Button extends StatelessWidget {
  Button({this.onPress, required this.icon, required this.text});

  var onPress;
  IconData icon;
  var text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
      onPressed: onPress,
      child: Column(children: [Icon(icon, color: Colors.blue), Text(text)]),
    ));
  }
}
