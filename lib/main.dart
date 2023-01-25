import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "MiApp",
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
          title: const Text("Mi App"),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.network(
                  "https://images-cdn.9gag.com/photo/aYK8R1m_460s.jpg"),
            ),
            Container(
              padding: EdgeInsets.all(50.0),
              child: Image.network(
                  "https://images-cdn.9gag.com/photo/aYK8R1m_460s.jpg"),
            ),
            Container(
              padding: EdgeInsets.all(50.0),
              child: Image.network(
                  "https://images-cdn.9gag.com/photo/aYK8R1m_460s.jpg"),
            ),
            Container(
              padding: EdgeInsets.all(50.0),
              child: Image.network(
                  "https://images-cdn.9gag.com/photo/aYK8R1m_460s.jpg"),
            ),
          ],
        ));
  }
}
