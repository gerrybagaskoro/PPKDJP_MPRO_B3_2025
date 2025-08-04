import 'package:flutter/material.dart';

class Tugas3Flutter extends StatelessWidget {
  const Tugas3Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas 3 Flutter")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [Text("Nama:")]),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Row(children: [Text("Email:")]),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Row(children: [Text("No. HP:")]),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Row(children: [Text("Deskripsi:")]),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
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
                      decoration: BoxDecoration(color: Colors.teal),
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
                      decoration: BoxDecoration(color: Colors.yellow),
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
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: Colors.purple),
                    ),
                    Center(child: Text("enam")),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
