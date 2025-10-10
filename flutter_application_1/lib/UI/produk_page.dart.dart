import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/produk_detail.dart';
import 'package:flutter_application_1/UI/produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  // Daftar produk yang bisa ditambah dari form
  List<Map<String, dynamic>> produkList = [
    {"kode": "A001", "nama": "Kulkas", "harga": 2500000},
    {"kode": "A002", "nama": "TV", "harga": 5000000},
    {"kode": "A003", "nama": "Mesin Cuci", "harga": 1500000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.add),
            ),
            onTap: () async {
              // Pindah ke halaman ProdukForm dan tunggu hasilnya
              final hasil = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProdukForm(),
                ),
              );

              // Jika form mengembalikan data, tambahkan ke list
              if (hasil != null && hasil is Map<String, dynamic>) {
                setState(() {
                  produkList.add(hasil);
                });
              }
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: produkList.length,
        itemBuilder: (context, index) {
          final item = produkList[index];
          return ItemProduk(
            kodeProduk: item["kode"],
            namaProduk: item["nama"],
            harga: item["harga"],
          );
        },
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  const ItemProduk({
    Key? key,
    required this.kodeProduk,
    required this.namaProduk,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman detail produk
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdukDetail(
              kodeProduk: kodeProduk,
              namaProduk: namaProduk,
              harga: harga,
            ),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: ListTile(
          title: Text(
            namaProduk,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Harga: Rp $harga"),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        ),
      ),
    );
  }
}
