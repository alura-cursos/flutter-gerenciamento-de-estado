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
            final quantidade = transferencias.lista().length;
            int tamanho;

            if (quantidade <= 3) {
              tamanho = quantidade;
            } else {
              tamanho = transferencias.lista().sublist(quantidade - 2);
            }

            return ListView.builder(
              padding: const EdgeInsets.all(8),
              shrinkWrap: true,
              itemCount: tamanho,
              itemBuilder: (context, indice) {
                final transferencia = transferencias.lista()[indice];
                final valor = transferencia.toStringValor();
                final conta = transferencia.toStringConta();

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
