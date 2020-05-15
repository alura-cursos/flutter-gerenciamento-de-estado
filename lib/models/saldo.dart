import 'package:flutter/material.dart';

class Saldo extends ChangeNotifier {
  final double valor;

  Saldo(this.valor);

  @override
  String toString() {
    return 'R\$ $valor';
  }
}
