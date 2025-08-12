import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_9/model/model_produk_makanan_ringan.dart';

class ListViewTugasNo3 extends StatefulWidget {
  const ListViewTugasNo3({super.key});

  @override
  State<ListViewTugasNo3> createState() => _ListViewTugasNo3State();
}

class _ListViewTugasNo3State extends State<ListViewTugasNo3> {
  final List<MakananRinganModel> produkModel = [
    MakananRinganModel(
      namaMakanan: "Cheetos",
      hargaMakanan: 12000,
      warnaMakanan: Colors.blue,
      gambarProduk: "assets/images/produkMakananRingan/cheetos.jpg",
    ),
    MakananRinganModel(
      namaMakanan: "Taro",
      hargaMakanan: 8000,
      warnaMakanan: Colors.red,
      gambarProduk: "assets/images/produkMakananRingan/taro.jpg",
    ),
    MakananRinganModel(
      namaMakanan: "JetZ",
      hargaMakanan: 9000,
      warnaMakanan: Colors.yellow,
      gambarProduk: "assets/images/produkMakananRingan/jetz.jpg",
    ),
    MakananRinganModel(
      namaMakanan: "Oops",
      hargaMakanan: 10000,
      warnaMakanan: Colors.red,
      gambarProduk: "assets/images/produkMakananRingan/oops.jpg",
    ),
    MakananRinganModel(
      namaMakanan: "Chitato",
      hargaMakanan: 9000,
      warnaMakanan: Colors.blueAccent,
      gambarProduk: "assets/images/produkMakananRingan/chitato.jpg",
    ),
    MakananRinganModel(
      namaMakanan: "Qtella",
      hargaMakanan: 12000,
      warnaMakanan: Colors.deepPurpleAccent,
      gambarProduk: "assets/images/produkMakananRingan/qtela.jpg",
    ),
    MakananRinganModel(
      namaMakanan: "Potabee",
      hargaMakanan: 9000,
      warnaMakanan: Colors.pink,
      gambarProduk: "assets/images/produkMakananRingan/potabee.jpg",
    ),
    MakananRinganModel(
      namaMakanan: "Lays",
      hargaMakanan: 15000,
      warnaMakanan: Colors.purple,
      gambarProduk: "assets/images/produkMakananRingan/lays.jpg",
    ),
    MakananRinganModel(
      namaMakanan: "Kusuka",
      hargaMakanan: 9000,
      warnaMakanan: Colors.cyanAccent,
      gambarProduk: "assets/images/produkMakananRingan/kusuka.jpg",
    ),
    MakananRinganModel(
      namaMakanan: "Doritos",
      hargaMakanan: 12000,
      warnaMakanan: Colors.green,
      gambarProduk: "assets/images/produkMakananRingan/doritos.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: produkModel.length,
            itemBuilder: (BuildContext context, int index) {
              final dataProdukModel = produkModel[index];
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(dataProdukModel.gambarProduk),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(dataProdukModel.namaMakanan),
                // subtitle: Text("Rp ${dataProdukModel.hargaMakanan.toString()}"),
                subtitle: Text(
                  "Rp ${NumberFormat('#,###').format(dataProdukModel.hargaMakanan)}",
                ),
                trailing: ElevatedButton.icon(
                  icon: const Icon(Icons.shopping_cart, size: 16),
                  label: const Text("Beli"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                  ),
                  onPressed: () {
                    // Muncul snackbar Produk ditambahkan ke keranjang
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "${dataProdukModel.namaMakanan} ditambahkan ke keranjang",
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
