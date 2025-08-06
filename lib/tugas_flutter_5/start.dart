import 'package:flutter/material.dart';

class Tugas5Flutter extends StatefulWidget {
  const Tugas5Flutter({super.key});

  @override
  State<Tugas5Flutter> createState() => _Tugas5FlutterState();
}

class _Tugas5FlutterState extends State<Tugas5Flutter> {
  int counter = 0;
  bool tampilkan = false;
  bool warnaDisukai = false;
  bool tampilkanNamaTextButton = false;
  bool tampilkanNamaInkWell = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9ECDE),
      appBar: AppBar(
        title: Text("Tugas 5 Flutter - State"),
        backgroundColor: const Color(0xFFF9ECDE),
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          counter++;
          print(counter);
        },
      ),
      body: Column(
        children: [
          Center(),
          Text(
            "1. Elevated Button",
            style: TextStyle(fontSize: 16, fontFamily: "FiraSans"),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.amber),
            ),
            onPressed: () {
              setState(() {
                tampilkan = !tampilkan;
                print("tampillan");
                print(tampilkan);
              });
              counter++;
            },
            child: Text(
              tampilkan
                  ? "Nama saya: Gerry Bagaskoro Putro"
                  : "ElevatedButton - Tampilkan Nama",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "2. IconButton",
            style: TextStyle(fontSize: 16, fontFamily: "FiraSans"),
          ),
          SizedBox(height: 8),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(6),
            height: 60,
            width: 80,
            child: IconButton(
              icon: const Icon(Icons.favorite),
              color: warnaDisukai ? Colors.red : Colors.grey,
              iconSize: 40,
              onPressed: () {
                setState(() {
                  warnaDisukai = !warnaDisukai;
                  print("warnaDisukai");
                  print(warnaDisukai);
                });
              },
            ),
          ),
          SizedBox(height: 8),
          if (warnaDisukai)
            Text(
              'Disukai',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontFamily: "FiraSans",
              ),
            ),
          SizedBox(height: 8),
          Text(
            "3. TextButton",
            style: TextStyle(fontSize: 16, fontFamily: "FiraSans"),
          ),
          // Container(
          //   margin: EdgeInsets.all(8),
          //   padding: EdgeInsets.all(6),
          //   width: 200,
          //   height: 100,
          //   decoration: BoxDecoration(
          //     color: Colors.amber,
          //     border: Border.all(color: Colors.grey, width: 2),
          //   ),
          //   child: Center(
          //     child: TextButton(
          //       onPressed: () {
          //         setState(() {
          //           tampilkanNamaTextButton = !tampilkanNamaTextButton;
          //         });
          //         print("tampilkanNamaTextButton");
          //         print(tampilkanNamaTextButton);
          //       },
          //       child: Text(
          //         tampilkanNamaTextButton
          //             ? "Ini adalah Text Button"
          //             : "TextButton - Lihat Selengkapnya",
          //         style: TextStyle(
          //           fontSize: 16,
          //           fontFamily: "FiraSans",
          //           fontWeight: FontWeight.bold,
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          TextButton(
            onPressed: () {
              setState(() {
                tampilkanNamaTextButton = !tampilkanNamaTextButton;
              });
              print("tampilkanNamaTextButton");
              print(tampilkanNamaTextButton);
            },
            child: Text(
              tampilkanNamaTextButton
                  ? "Ini adalah Text Button"
                  : "TextButton - Lihat Selengkapnya",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "FiraSans",
                // fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          if (tampilkanNamaTextButton)
            Text(
              'TextButton - Deskripsi Tambahan',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
                fontFamily: "FiraSans",
              ),
            ),
          SizedBox(height: 8),
          Text(
            "5. InkWell",
            style: TextStyle(fontSize: 16, fontFamily: "FiraSans"),
          ),
          SizedBox(height: 8),
          InkWell(
            onTap: () {
              setState(() {
                tampilkanNamaInkWell = !tampilkanNamaInkWell;
              });
              print("Kotak disentuh");
              print(tampilkanNamaInkWell);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                height: 100,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  tampilkanNamaInkWell ? "" : "InkWell - Menampilkan Text",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // if (tampilkanNamaInkWell)
          //   Text(
          //     'Gerry Bagaskoro Putro',
          //     style: TextStyle(
          //       fontSize: 18,
          //       color: Colors.black,
          //       // fontWeight: FontWeight.bold,
          //       fontFamily: "FiraSans",
          //     ),
          //   ),
          SizedBox(height: 8),
          Text(
            "6. GestureDetector",
            style: TextStyle(fontSize: 16, fontFamily: "FiraSans"),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onDoubleTap: () {
              print("Ditekan dua kali");
            },
            onTap: () {
              print("Ditekan sekali");
            },
            onLongPress: () {
              print("Tahan lama");
            },
            child: Container(
              // color: Colors.amber, //Cause Error
              padding: const EdgeInsets.all(8),
              margin: EdgeInsets.all(2),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(16),
                color: Colors.amber,
              ),
              child: const Center(
                child: Text(
                  "Tekan Aku",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: "FiraSans",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
