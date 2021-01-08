import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('ByteBank'),
      ),
      body: ListView(children: [
        Align(
          child: SaldoCard(),
          alignment: Alignment.topCenter,
        ),
        Consumer<Saldo>(
          builder: (context, saldo, child) {
            return RaisedButton(
              onPressed: () {
                saldo.adiciona(10);
              },
              child: Text('Adiciona'),
            );
          },
        )
      ]),
    );
  }
}
