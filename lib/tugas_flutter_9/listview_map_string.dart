import 'package:flutter/material.dart';

class ListViewTugasNo2 extends StatefulWidget {
  const ListViewTugasNo2({super.key});

  @override
  State<ListViewTugasNo2> createState() => _ListViewTugasNo2State();
}

class _ListViewTugasNo2State extends State<ListViewTugasNo2> {
  final List<Map<String, dynamic>> produkMakananRingan = [
    {
      "nama": "Cheetos",
      "price": 12000,
      "gambar": "assets/images/produkMakananRingan/cheetos.jpg",
    },
    {
      "nama": "Taro",
      "price": 8000,
      "gambar": "assets/images/produkMakananRingan/taro.jpg",
    },
    {
      "nama": "Jetz",
      "price": 9000,
      "gambar": "assets/images/produkMakananRingan/jetz.jpg",
    },
    {
      "nama": "Oops",
      "price": 10000,
      "gambar": "assets/images/produkMakananRingan/oops.jpg",
    },
    {
      "nama": "Chitato",
      "price": 9000,
      "gambar": "assets/images/produkMakananRingan/chitato.jpg",
    },
    {
      "nama": "Qtella",
      "price": 12000,
      "gambar": "assets/images/produkMakananRingan/qtela.jpg",
    },
    {
      "nama": "Potabee",
      "price": 9000,
      "gambar": "assets/images/produkMakananRingan/potabee.jpg",
    },
    {
      "nama": "Lays",
      "price": 15000,
      "gambar": "assets/images/produkMakananRingan/lays.jpg",
    },
    {
      "nama": "Kusuka",
      "price": 9000,
      "gambar": "assets/images/produkMakananRingan/kusuka.jpg",
    },
    {
      "nama": "Doritos",
      "price": 12000,
      "gambar": "assets/images/produkMakananRingan/doritos.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          // physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: produkMakananRingan.length,
          itemBuilder: (BuildContext context, int index) {
            final dataProduk = produkMakananRingan[index];
            return ListTile(
              title: Text(dataProduk["nama"]),
              // subtitle: Text(dataProduk["price"].toString()),
              subtitle: Text("Rp ${dataProduk["price"]}"),
              trailing: dataProduk["gambar"] == null
                  ? null
                  : CircleAvatar(child: Image.asset(dataProduk["gambar"])),
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("${index + 1}"),
              ),
            );
          },
        ),
      ],
    );
  }
}
