import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Saldo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          '30.0',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
