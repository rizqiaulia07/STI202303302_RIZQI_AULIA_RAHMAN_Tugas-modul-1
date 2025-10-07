import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;
  final bool isFromForm; // cek apakah dipanggil dari form

  const ProdukDetail({
    Key? key,
    this.kodeProduk,
    this.namaProduk,
    this.harga,
    this.isFromForm = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: const Text("Detail Produk",
              style: TextStyle(color: Colors.white))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Kode Produk : ${kodeProduk ?? '-'}",
                style: const TextStyle(fontSize: 16)),
            Text("Nama Produk : ${namaProduk ?? '-'}",
                style: const TextStyle(fontSize: 16)),
            Text("Harga : Rp ${harga ?? 0}",
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            if (isFromForm)
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context); // kembali ke form
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text("Kembali ke Daftar"),
                
              ),
          ],
        ),
      ),
    );
  }
}


