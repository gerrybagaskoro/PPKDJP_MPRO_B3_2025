import 'package:flutter/material.dart';

class Tugas4Flutter extends StatelessWidget {
  const Tugas4Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> produkLaptop = [
      {
        "namaproduk": "Lenovo ThinkPad X1 Carbon",
        "harga": 21,
        "deskripsi": "Dikenal sebagai laptop bisnis yang kuat dan ringan.",
        "gambar": "assets/images/produk/lenovo-thinkpad-x1-carbon.jpg",
      },
      {
        "namaproduk": "HP Spectre x360",
        "harga": 15,
        "deskripsi": "Dikenal dengan desain premium dan fleksibilitas 2-in-1.",
        "gambar": "assets/images/produk/spectre-hp-x360.png",
      },
      {
        "namaproduk": "Dell XPS 13",
        "harga": 18,
        "deskripsi": "Dikenal dengan layar InfinityEdge dan performa tinggi.",
        "gambar": "assets/images/produk/dell-xps-13.jpg",
      },
      {
        "namaproduk": "MSI Prestige 14",
        "harga": 16,
        "deskripsi":
            "Dikenal dengan performa grafis yang kuat dan desain premium.",
        "gambar": "assets/images/produk/msi-prestige-14-evo-laptop.jpg",
      },
      {
        "namaproduk": "Asus ZenBook 14",
        "harga": 7,
        "deskripsi": "Laptop tipis dan ringan serta performa yang baik.",
        "gambar": "assets/images/produk/asus-zenbook-14.jpg",
      },
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFF9ECDE),
      appBar: AppBar(
        title: Text(
          "Produk",
          style: TextStyle(
            fontSize: 18,
            fontFamily: "FiraSans",
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        backgroundColor: Color.fromARGB(180, 200, 145, 5),
        leading: Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Icon(Icons.menu, size: 24, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.shopping_bag, size: 24, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_vert, size: 24, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Expanded(
            //   child: Container(
            //     margin: EdgeInsets.all(8),
            //     padding: EdgeInsets.all(6),
            //     height: 60,
            //     width: double.infinity,
            //     // alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       border: Border.all(
            //         color: Color.fromARGB(150, 100, 100, 100),
            //         width: 2,
            //       ),
            //       borderRadius: BorderRadius.circular(24),
            //     ),
            //     child: Column(
            //       children: [
            //         Icon(
            //           Icons.email,
            //           color: Color.fromARGB(255, 100, 100, 100),
            //         ),
            //         // SizedBox(height: 6),
            //         Text(
            //           "my.gerry139@gmail.com",
            //           style: TextStyle(fontSize: 12, fontFamily: "FiraSans"),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     margin: EdgeInsets.all(8),
            //     padding: EdgeInsets.all(12),
            //     width: double.infinity,
            //     alignment: Alignment.center,
            //     height: 60,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(24),
            //       border: Border.all(
            //         color: Color.fromARGB(150, 100, 100, 100),
            //         width: 2,
            //       ),
            //     ),
            //     child: Row(
            //       children: [
            //         Icon(
            //           Icons.phone,
            //           color: const Color.fromARGB(255, 100, 100, 100),
            //         ),
            //         // SizedBox(width: 4),
            //         Spacer(),
            //         // Spacer(),
            //         Text(
            //           '+62 812-8389-9252',
            //           style: TextStyle(fontSize: 12, fontFamily: "FiraSans"),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(height: 8),
            Text(
              "Pemesanan Produk",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "FiraSans",
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nama Pemesan',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: 'Surel',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nomor Telepon',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: 'Deskripsi Pembelian',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.description),
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Daftar Produk",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: produkLaptop.length,
              itemBuilder: (BuildContext context, int index) {
                // final data = produkLaptop[index];
                return Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      // height: 200,
                      // width: double.infinity,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        // color: data["color"],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(4),
                              height: 400,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    produkLaptop[index]["gambar"],
                                    height: 280,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    produkLaptop[index]["namaproduk"],
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Harga mulai dari Rp ${produkLaptop[index]["harga"]},999,000",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    produkLaptop[index]["deskripsi"],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        180,
                                        200,
                                        145,
                                        5,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      "Masukkan Keranjang",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
