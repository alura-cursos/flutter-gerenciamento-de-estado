import 'package:flutter/material.dart';

class Saldo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('30,00',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ))));
  }
}
