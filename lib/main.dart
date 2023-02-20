// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatefulWidget {
  const MiApp({super.key});
  @override
  State<MiApp> createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  List<Persona> _personas = [
    Persona("Yupis", "Anel", "+522166781"),
    Persona("Martin", "Garcia", "+523283342"),
    Persona("Dany", "MArtinez", "+5236652342"),
    Persona("Emilio", "Lopez", "+5232378942"),
    Persona("Jennifer", "Ramos", "+52323365642"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("App Bar - API REST - V6"),
            ),
            body: ListView.builder(
              itemCount: _personas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      _personas[index].name + " " + _personas[index].lastname),
                  subtitle: Text(_personas[index].phone),
                  leading: CircleAvatar(
                    child: Text(_personas[index].name.substring(0, 2)),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onLongPress: () {
                    this._borrarPersona(context, _personas[index]);
                  },
                );
              },
            )));
  }

  void _borrarPersona(BuildContext context, Persona persona) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Borrar Registro"),
          content:
              Text('¿Estas seguro que quieres borrar ' + persona.name + '?'),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Si'),
              onPressed: () {
                this.setState(() {
                  this._personas.remove(persona);
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

class Persona {
  String name = "";
  String lastname = "";
  String phone = "";

  Persona(name, lastname, phone) {
    this.name = name;
    this.lastname = lastname;
    this.phone = phone;
  }
}
