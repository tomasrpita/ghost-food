import 'package:flutter/material.dart';


class QrPage extends StatelessWidget {
  final amarilloGhost = const Color.fromARGB(233, 233, 222, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modulo Qr'),
        backgroundColor: amarilloGhost,
      ),
    );
  }
}