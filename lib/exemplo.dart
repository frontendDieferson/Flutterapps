import 'package:flutter/material.dart';

class Exemplo extends StatelessWidget {
  Exemplo({required this.title, required this.onPress});

  var title;
  void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.red,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Text(title),
        TextButton(child: Text('Clique aqui'), onPressed: onPress)
      ]),
    );
  }
}
