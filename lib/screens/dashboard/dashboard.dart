import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: ListView(children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: SaldoCard(),
        ),
                  ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.green,
                  child: Text('Recebe valor'),
                  onPressed: () {
    Provider.of<Saldo>(context, listen: false).adiciona(10);
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  child: Text('Nova Transferência'),
                  onPressed: () {
    Provider.of<Saldo>(context, listen: false).subtrai(10);
                  },
                ),
              ],
            )

      ]),
    );
  }
}
