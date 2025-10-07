import 'package:flutter/material.dart';

class StatelessStatefulScreen extends StatelessWidget {
  const StatelessStatefulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(  backgroundColor: Colors.lightBlueAccent,title:const Text("stateless_stateful",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Contoh StatelessWidget"),
          SizedBox(height: 20),
          CounterStateful(),
        ],
      ),
    );
  }
}

class CounterStateful extends StatefulWidget {
  const CounterStateful({super.key});

  @override
  State<CounterStateful> createState() => _CounterStatefulState();
}

class _CounterStatefulState extends State<CounterStateful> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
  return Center( // 🔹 semua isi akan ditaruh di tengah layar
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center, // 🔹 vertikal tengah
      children: [
        Text("Counter: $counter"),
        ElevatedButton(
          onPressed: () {
            setState(() => counter++);
          },
          child: const Text("Tambah"),
        ),
      ],
    ),
  );
}
}