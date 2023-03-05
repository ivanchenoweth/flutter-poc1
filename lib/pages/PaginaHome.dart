import 'package:flutter/cupertino.dart';

class PaginaHome extends StatelessWidget {
  const PaginaHome({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Center(
      child: const Text(
        "Home",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
