// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  bool _subscrito = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("07 AlertDialog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.all(25),
              ),
              onPressed: () {
                _mostrarAlerta(context);
              },
              child: Text("Subcribirme a mi canal V2",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xffffff00),
                    backgroundColor: Colors.orange,
                  )),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              _subscrito ? "Subscrito" : "No Subscrito",
            ),
          ],
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(_subscrito ? "Cancelar Subscripcion" : 'Subscribirse'),
          content: Text(_subscrito
              ? '¿Estas seguro que quieres cancelar la subcripcion?'
              : "¿Estas seguro que quieres subscribirte?"),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Si quiero'),
              onPressed: () {
                setState(() {
                  _subscrito = !_subscrito;
                });
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
