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
        body: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: SaldoCard(),
            ),
            Consumer<Saldo>(builder: (context, saldo, child) {
              return ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Adiciona'),
                    onPressed: () {
                      saldo.adiciona(10);
                    },
                  )
                ],
              );
            })
          ],
        ));
  }
}
