import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:bytebank/screens/deposito/formulario.dart';
import 'package:bytebank/screens/transferencia/formulario.dart';
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
            return ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: Colors.green,
                  child: Text('Receber Deposito'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FormularioDeposito();
                    }));
                  },
                ),
                RaisedButton(
                  color: Colors.green,
                  child: Text('Nova Transferencia'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return FormularioTransferencia();
                        }));
                  },
                ),
              ],
            );
          },
        )
      ]),
    );
  }
}
