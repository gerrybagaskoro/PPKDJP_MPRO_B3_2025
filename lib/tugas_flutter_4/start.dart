import 'package:flutter/material.dart';

class Tugas4Flutter extends StatelessWidget {
  const Tugas4Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas 4 Flutter")),
      body: ListView(
        children: [
          Row(children: [Text("Nama:")]),
          SizedBox(height: 8.0),
          TextField(decoration: InputDecoration(border: OutlineInputBorder())),
          SizedBox(height: 8.0),
          Row(children: [Text("Email:")]),
          SizedBox(height: 8.0),
          TextField(decoration: InputDecoration(border: OutlineInputBorder())),
          SizedBox(height: 8.0),
          Row(children: [Text("No. HP:")]),
          SizedBox(height: 8.0),
          TextField(decoration: InputDecoration(border: OutlineInputBorder())),
          SizedBox(height: 8.0),
          Row(children: [Text("Deskripsi:")]),
          SizedBox(height: 8.0),
          TextField(decoration: InputDecoration(border: OutlineInputBorder())),

          ListTile(
            title: Text("Daftar Produk"),
            subtitle: Text("Berikut adalah produk yang tersedia."),
          ),
          GridView.count(
            shrinkWrap: true,
            padding: EdgeInsets.all(8.0),
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      image: DecorationImage(
                        image: AssetImage("assets/images/sushi"),
                      ),
                    ),
                  ),
                  Center(child: Text("satu")),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                  Center(child: Text("dua")),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(color: Colors.orange),
                  ),
                  Center(child: Text("tiga")),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                  Center(child: Text("empat")),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(color: Colors.cyan),
                  ),
                  Center(child: Text("lima")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
