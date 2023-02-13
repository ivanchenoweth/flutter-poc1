// ignore_for_file: prefer_const_constructors

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: cuerpo(),
      ),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
      image: NetworkImage(
          "https://milesdefondos.com/wp-content/uploads/2021/06/Fondos-de-pantalla-para-celular-de-Noche-5.jpg"),
    )),
    child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      nombre(),
      campoUsuario(),
      campoContrasena(),
      botonEntrar()
    ])),
  );
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: TextField(
        decoration: InputDecoration(
            hintText: "User", fillColor: Colors.white, filled: true)),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password", fillColor: Colors.white, filled: true)),
  );
}

Widget nombre() {
  return Text("Sign in", style: TextStyle(color: Colors.white, fontSize: 35.0));
}

Widget botonEntrar() {
  return TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      primary: Colors.purpleAccent, // Text Color
    ),
    child: const Text(
      'Text Button ',
      style: TextStyle(fontSize: 24),
    ),
  );
}
