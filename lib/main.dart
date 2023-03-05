// ignore_for_file: prefer_const_constructors, prefer_initializing_formals, unused_field, unrelated_type_equality_checks

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:primera_app_curso/models/Gif.dart';
import 'package:http/http.dart' as http;

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
  Future<List<Gif>>? _listadoGifs;

  Future<List<Gif>> _getGifs() async {
    print("Llamando a la url");
    String url =
        "https://api.giphy.com/v1/gifs/trending?api_key=GDHkHx9F5WfVj6cvVTyjscoFfMSLNbpa&limit=10&rating=g";
    final response = await http.get(Uri.parse(url));

    List<Gif> gifs = [];

    if (response.statusCode == 200) {
      print("status 200");
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);
      for (var item in jsonData["data"]) {
        gifs.add(Gif(item["title"], item["images"]["downsized"]["url"]));
      }
      return gifs;
    } else {
      throw Exception("La conexion ha fallado");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listadoGifs = _getGifs();
  }

  @override
  Widget build(BuildContext context) {
    var futureBuilder = FutureBuilder(
      future: _listadoGifs,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return GridView.count(
            crossAxisCount: 2,
            children: _listGifs(snapshot.data),
          );
        } else if (snapshot.hasError) {
          print(snapshot.error);
          return Text("Error");
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text("HTTP REST API - 2023 - V8"),
        ),
        body: futureBuilder);
  }

  List<Widget> _listGifs(List<Gif>? data) {
    List<Widget> gifs = [];

    for (var gif in data!) {
      gifs.add(Card(
          child: Column(
        children: [
          Expanded(
              child: Image.network(
            gif.url,
            fit: BoxFit.fill,
          )),
        ],
      )));
    }
    return gifs;
  }
}
