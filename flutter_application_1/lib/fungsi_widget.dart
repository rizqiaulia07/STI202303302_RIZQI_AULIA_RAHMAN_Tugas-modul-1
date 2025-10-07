import 'package:flutter/material.dart';

class FungsiWidgetScreen extends StatelessWidget {
  const FungsiWidgetScreen({super.key});

  Widget buildText(String isi) {
    return Text(isi, style: const TextStyle(fontSize: 20));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(  backgroundColor: Colors.lightBlueAccent,title:const Text("Fungsi Widget",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildText("Widget dari fungsi 1"),
            buildText("Widget dari fungsi 2"),
          ],
        ),
      ),
    );
  }
}
