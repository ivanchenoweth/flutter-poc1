// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:primera_app_curso/pages/PaginaHome.dart';
import 'package:primera_app_curso/pages/PaginaUsers.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int _paginaActual = 0;

  // ignore: prefer_final_fields
  List<Widget> _paginas = [
    PaginaHome(),
    PaginaUsers(),
  ];

  @override
  Widget build(BuildContext context) {
    var icons = Icons;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar V1"),
      ),
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          currentIndex: _paginaActual,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "Users"),
          ],
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          }),
    );
  }
}
