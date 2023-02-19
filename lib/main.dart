// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:primera_app_curso/pages/pagina02.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("06 Navegacion"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hola"),
            ElevatedButton(
              child: Text("Ir a la otra Pagina"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina02()));
              },
            )
          ],
        ),
      ),
    );
  }
}
