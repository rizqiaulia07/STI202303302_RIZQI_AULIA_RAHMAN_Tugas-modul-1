import 'package:flutter/material.dart';
import 'produk_form.dart';
import 'produk_detail.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  List<Map<String, dynamic>> listProduk = [
    {"kode": "A001", "nama": "Kulkas", "harga": 2500000},
    {"kode": "A002", "nama": "TV", "harga": 5000000},
    {"kode": "A003", "nama": "Mesin Cuci", "harga": 1500000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        backgroundColor: Colors.lightBlueAccent,
      ),

      // ✅ tombol untuk buka form di bawah list
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
        onPressed: () async {
          // buka halaman form dan tunggu hasilnya
          final produkBaru = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProdukForm()),
          );

          // jika form mengembalikan data, tambahkan ke list
          if (produkBaru != null && produkBaru is Map<String, dynamic>) {
            setState(() {
              listProduk.add(produkBaru);
            });
          }
        },
      ),

      // tampilkan data produk
      body: ListView.builder(
        itemCount: listProduk.length,
        itemBuilder: (context, index) {
          final produk = listProduk[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: Text(produk["nama"]),
              subtitle: Text("Harga: Rp ${produk["harga"]}"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProdukDetail(
                      kodeProduk: produk["kode"],
                      namaProduk: produk["nama"],
                      harga: produk["harga"],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
