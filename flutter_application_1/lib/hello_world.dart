import 'package:flutter/material.dart';

class HelloWorldScreen extends StatelessWidget {
  const HelloWorldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  backgroundColor: Colors.lightBlueAccent,title:const Text("Hello Word",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)))),
      body: const Center(
        child: Text("Hello World", style:TextStyle(color: Color.fromARGB(255, 255, 0, 0) ,fontSize: 24)),
      ),
    );
  }
}
