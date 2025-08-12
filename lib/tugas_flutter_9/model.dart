import 'package:flutter/material.dart';
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
    ),
    MakananRinganModel(
      namaMakanan: "Taro",
      hargaMakanan: 8000,
      warnaMakanan: Colors.red,
    ),
    MakananRinganModel(
      namaMakanan: "JetZ",
      hargaMakanan: 9000,
      warnaMakanan: Colors.yellow,
    ),
    MakananRinganModel(
      namaMakanan: "Oops",
      hargaMakanan: 10000,
      warnaMakanan: Colors.red,
    ),
    MakananRinganModel(
      namaMakanan: "Chitato",
      hargaMakanan: 9000,
      warnaMakanan: Colors.blueAccent,
    ),
    MakananRinganModel(
      namaMakanan: "Qtella",
      hargaMakanan: 12000,
      warnaMakanan: Colors.deepPurpleAccent,
    ),
    MakananRinganModel(
      namaMakanan: "Potabee",
      hargaMakanan: 9000,
      warnaMakanan: Colors.pink,
    ),
    MakananRinganModel(
      namaMakanan: "Lays",
      hargaMakanan: 15000,
      warnaMakanan: Colors.purple,
    ),
    MakananRinganModel(
      namaMakanan: "Kusuka",
      hargaMakanan: 9000,
      warnaMakanan: Colors.cyanAccent,
    ),
    MakananRinganModel(
      namaMakanan: "Doritos",
      hargaMakanan: 12000,
      warnaMakanan: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: produkModel.length,
          itemBuilder: (BuildContext context, int index) {
            final dataProdukModel = produkModel[index];
            return ListTile(
              title: Text(dataProdukModel.namaMakanan),
              subtitle: Text(dataProdukModel.hargaMakanan.toString()),
              trailing: CircleAvatar(
                backgroundColor: dataProdukModel.warnaMakanan,
              ),
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
