import 'package:flutter/material.dart';

class Tugas4Flutter01 extends StatelessWidget {
  const Tugas4Flutter01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas 4 Flutter")),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(children: [Text("Nama:")]),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 8.0),
            Row(children: [Text("Email:")]),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 8.0),
            Row(children: [Text("No. HP:")]),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 8.0),
            Row(children: [Text("Deskripsi:")]),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 8.0),

            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text(
                          "Item ${index + 1}",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
