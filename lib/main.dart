// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Filas y Columnas",
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Filas columnas y botones"),
        ),
        body: Center(
            child: ElevatedButton(
          // ignore: prefer_const_literals_to_create_immutables
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(Icons.access_time),
            SizedBox(width: 7),
            const Text("Hola2"),
          ]),
          onPressed: () {
            var t = DateTime.now();
            print(t);
          },
        )));
  }
}
