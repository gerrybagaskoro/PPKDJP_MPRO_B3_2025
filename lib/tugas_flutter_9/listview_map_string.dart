import 'package:flutter/material.dart';

class ListViewTugasNo2 extends StatefulWidget {
  const ListViewTugasNo2({super.key});

  @override
  State<ListViewTugasNo2> createState() => _ListViewTugasNo2State();
}

class _ListViewTugasNo2State extends State<ListViewTugasNo2> {
  final List<Map<String, dynamic>> produkMakananRingan = [
    // {"nama": "Cheetos", "price": 5000, "warna": Colors.yellow},
    // {"nama": "Taro", "price": 4000, "warna": Colors.red},
    // {"nama": "Jetz", "price": 8000, "warna": Colors.yellow},
    // {"nama": "Oops", "price": 80000, "warna": Colors.blue},
    // {"nama": "Chitato", "price": 12000, "warna": Colors.purple},
    // {"nama": "Qtella", "price": 8000, "warna": Colors.green},
    // {"nama": "Potabee", "price": 9000, "warna": Colors.amber},
    // {"nama": "Lays", "price": 9000, "warna": Colors.deepOrangeAccent},
    // {"nama": "Kusuka", "price": 9000, "warna": Colors.deepPurple},
    // {"nama": "Doritos", "price": 8000, "warna": Colors.pink},
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
    // {"nama": "Taro", "price": 4000, "gambar": .red},
    // {"nama": "Jetz", "price": 8000, "gambar": .yellow},
    // {"nama": "Oops", "price": 80000, "gambar": .blue},
    // {"nama": "Chitato", "price": 12000, "gambar": .purple},
    // {"nama": "Qtella", "price": 8000, "gambar": .green},
    // {"nama": "Potabee", "price": 9000, "gambar": .amber},
    // {"nama": "Lays", "price": 9000, "gambar": .deepOrangeAccent},
    // {"nama": "Kusuka", "price": 9000, "gambar": .deepPurple},
    // {"nama": "Doritos", "price": 8000, "gambar": .pink},
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
            return
            // ListTile(
            //   title: Text(dataProduk["nama"]),
            //   subtitle: Text(dataProduk["price"].toString()),
            //   trailing: CircleAvatar(backgroundColor: dataProduk["warna"]),
            //   leading: CircleAvatar(
            //     backgroundColor: Colors.amber,
            //     child: Text("${index + 1}"),
            //   ),
            // );
            ListTile(
              title: Text(dataProduk["nama"]),
              subtitle: Text(dataProduk["price"].toString()),
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
