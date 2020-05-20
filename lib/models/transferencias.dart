import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

class Transferencias extends ChangeNotifier {
  final List<Transferencia> transferencias = [];

  lista() {
    return transferencias;
  }

  adiciona(Transferencia novaTransferencia) {
    transferencias.add(novaTransferencia);
  }
}
