import 'package:bytebank/models/saldo.dart';
import 'package:flutter/material.dart';

class SaldoCard extends StatelessWidget {
  final Saldo saldo;

  SaldoCard(this.saldo);

  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(saldo.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ))));
  }
}
