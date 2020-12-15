import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: ListTransferencia(),
    appBar: AppBar(title: Text('Transferencias')),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
    ),
  ),
));

class ListTransferencia extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferencia(Transferencia(100.0, 1000)),
        ItemTransferencia(Transferencia(200.0, 2000)),
        ItemTransferencia(Transferencia(300.0, 3000))
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;


  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(this._transferencia.valor.toString()),
          subtitle: Text(this._transferencia.numeroConta.toString()),
        )
    );
  }

}

class Transferencia  {

  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}