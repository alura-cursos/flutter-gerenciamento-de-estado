import 'package:bytebank/models/transferencias.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UltimasTransferencias extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Últimas transferências'),
        Consumer<Transferencias>(
          builder: (context, transferencias, child) {
            return ListView.builder(
              padding: const EdgeInsets.all(8),
              shrinkWrap: true,
              itemCount: transferencias.lista().length,
              itemBuilder: (context, indice) {
                final valor = transferencias.lista()[indice].toStringValor();
                final conta = transferencias.lista()[indice].toStringConta();

                return Card(
                  child: ListTile(
                    leading: Icon(Icons.monetization_on),
                    title: Text(valor),
                    subtitle: Text(conta),
                  ),
                );
              },
            );
          },
        ),
        FlatButton(
          color: Colors.green,
          onPressed: () {},
          child: Text('Visualizar todas'),
        )
      ],
    );
  }
}
