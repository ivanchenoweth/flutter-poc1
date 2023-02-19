// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget {
  const Pagina02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pagina 02")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Terminos y Condiciones",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Text(
              "Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. ",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20.0),
            Text(
              "Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. Para usar esta aplicacion es necesario que aceptes los terminos y condiciones. ",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, padding: EdgeInsets.all(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("Acepto todo"),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() {}
}
