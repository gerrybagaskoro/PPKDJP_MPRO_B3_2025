import 'package:flutter/material.dart';
// import 'package:ppkd_b_3/day_14/model/produk_model.dart';

class ListViewTugasNo1 extends StatefulWidget {
  const ListViewTugasNo1({super.key});

  @override
  State<ListViewTugasNo1> createState() => _ListViewTugasNo1State();
}

class _ListViewTugasNo1State extends State<ListViewTugasNo1> {
  //Step 1
  final List<String> namaMakananRingan = [
    "Cheetos",
    "Taro",
    "JetZ",
    "Oops",
    "Chitato",
    "Qtella",
    "Potabee",
    "Lays",
    "Kusuka",
    "Doritos",
  ];
  // final List<Map<String, dynamic>> produk = [
  //   {"nama": "Baju", "price": 50000, "warna": Colors.blue},
  //   {"nama": "Celana", "price": 60000, "warna": Colors.red},
  //   {"nama": "Topi", "price": 70000, "warna": Colors.yellow},
  //   {"nama": "Sepatu", "price": 80000, "warna": Colors.green},
  // ];
  // final List<ProdukModel> produkModel = [
  //   ProdukModel(nama: "Baju", price: 50000, warna: Colors.blue),
  //   ProdukModel(nama: "Celana", price: 60000, warna: Colors.red),
  //   ProdukModel(nama: "Topi", price: 70000, warna: Colors.yellow),
  //   ProdukModel(nama: "Sepatu", price: 80000, warna: Colors.indigoAccent),
  // ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //List
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),

          shrinkWrap: true,
          itemCount: namaMakananRingan.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(namaMakananRingan[index]),
              leading: CircleAvatar(child: Text("${index + 1}")),
            );
          },
        ),
        // Divider(),
        // //List of Map
        // ListView.builder(
        //   physics: NeverScrollableScrollPhysics(),

        //   shrinkWrap: true,
        //   itemCount: produk.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     final dataProduk = produk[index];
        //     return ListTile(
        //       title: Text(dataProduk["nama"]),
        //       subtitle: Text(dataProduk["price"].toString()),
        //       trailing: CircleAvatar(backgroundColor: dataProduk["warna"]),
        //       leading: CircleAvatar(
        //         backgroundColor: Colors.amber,
        //         child: Text("${index + 1}"),
        //       ),
        //     );
        //   },
        // ),
        // //Model
        // Divider(),

        // ListView.builder(
        //   physics: NeverScrollableScrollPhysics(),
        //   shrinkWrap: true,
        //   itemCount: produkModel.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     final dataProdukModel = produkModel[index];
        //     return ListTile(
        //       title: Text(dataProdukModel.nama),
        //       subtitle: Text(dataProdukModel.price.toString()),
        //       trailing: CircleAvatar(backgroundColor: dataProdukModel.warna),
        //       leading: CircleAvatar(
        //         backgroundColor: Colors.amber,
        //         child: Text("${index + 1}"),
        //       ),
        //     );
        //   },
        // ),
      ],
    );
  }
}
