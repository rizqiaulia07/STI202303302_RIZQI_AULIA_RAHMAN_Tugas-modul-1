import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/produk_page.dart.dart';
import 'hello_world.dart';
import 'widget_column.dart';
import 'widget_row.dart';
import 'stateless_stateful.dart';
import 'fungsi_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tugas Modul 1 Flutter")),
      body: ListView(
        children: [
          menuItem(context, "Hello World", const HelloWorldScreen()),
          menuItem(context, "Widget Column", const WidgetColumnScreen()),
          menuItem(context, "Widget Row", const WidgetRowScreen()),
          menuItem(context, "Stateless & Stateful", const StatelessStatefulScreen()),
       
          menuItem(context, "Fungsi Widget", const FungsiWidgetScreen()),
          menuItem(context, "Form", const ProdukPage()),
        ],
      ),
    );
  }

  Widget menuItem(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => page),
      ),
    );
  }
}

