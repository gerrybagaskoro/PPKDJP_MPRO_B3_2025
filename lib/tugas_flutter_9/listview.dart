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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //List
        ListView.builder(
          // physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: namaMakananRingan.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(namaMakananRingan[index]),
              leading: CircleAvatar(child: Text("${index + 1}")),
            );
          },
        ),
      ],
    );
  }
}
