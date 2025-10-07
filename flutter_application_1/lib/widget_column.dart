import 'package:flutter/material.dart';

class WidgetColumnScreen extends StatelessWidget {
  const WidgetColumnScreen({super.key});

  @override

Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.lightBlueAccent,
      title: const Text(
        "Widget Column",
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      ),
    ),
    body: Center( // <-- ini bikin konten di tengah
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // tengah vertikal
        crossAxisAlignment: CrossAxisAlignment.center, // tengah horizontal
        children: const [
          Text("Baris 1"),
          Text("Baris 2"),
          Text("Baris 3"),
        ],
      ),
    ),
  );
}
}