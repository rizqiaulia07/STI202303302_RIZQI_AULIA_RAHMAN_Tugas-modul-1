import 'package:flutter/material.dart';

class WidgetRowScreen extends StatelessWidget {
  const WidgetRowScreen({super.key});

  @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(  backgroundColor: Colors.lightBlueAccent,title:const Text("Widget Row",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)))),
    body: Center( // 🔹 bikin seluruh Row ada di tengah layar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons. play_arrow, size: 40),
          Icon(Icons.menu, size: 40),
          Icon(Icons.home, size: 40),
        ],
      ),
    ),
  );
}
}