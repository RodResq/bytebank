import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/saldo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const _titleAppBar = 'Receber Deposito';
const _dicaCampoValor = '0.00';
const _rotuloCampoValor = 'Valor';
const _textoBotaoConfirmar = 'Confirmar';

class FormularioDeposito extends StatelessWidget {
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_titleAppBar),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Editor(
                controlador: _controladorCampoValor,
                dica: _dicaCampoValor,
                rotulo: _rotuloCampoValor,
                icone: Icons.monetization_on,
              ),
              RaisedButton(
                onPressed: () => _criaTransferencia(context),
                child: Text(_textoBotaoConfirmar),
              ),
            ],
          ),
        ));
  }

  _criaTransferencia(context) {
    final double valor = double.tryParse(_controladorCampoValor.text);
    final depositoValido = _validaDeposito(valor);
    if (depositoValido) {
      _atualizaEstado(context, valor);
      Navigator.pop(context);
    }
  }

  _validaDeposito(valor) {
    final _campoPreenchido = valor != null;

    return _campoPreenchido;
  }

  _atualizaEstado(context, valor) {
    Provider.of<Saldo>(context, listen: false).adiciona(valor);
  }
}
