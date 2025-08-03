import 'package:flutter/material.dart';

class Tugas2Flutter extends StatelessWidget {
  const Tugas2Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9ECDE),
      appBar: AppBar(
        title: Text(
          "Profil Lengkap",
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
            child: Icon(Icons.edit, size: 24, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_vert, size: 24, color: Colors.white),
          ),
        ],
        // actions: [
        //   Icon(Icons.edit, color: Colors.white),
        //   Icon(Icons.star, color: Colors.white),
        //   Icon(Icons.more_vert, color: Colors.white),
        // ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 240,
                    height: 240,
                    decoration: BoxDecoration(
                      // color: Colors.amberAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color.fromARGB(125, 225, 145, 5),
                        width: 7.5,
                      ),
                      // borderRadius: BorderRadius.circular(24),
                      image: DecorationImage(
                        image: AssetImage("assets/images/kano.jpeg"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Gerry Bagaskoro Putro",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              fontFamily: "FiraSans",
            ),
          ),
          Text(
            "Informasi Kontak:",
            style: TextStyle(fontSize: 16, fontFamily: "FiraSans"),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(6),
                  height: 60,
                  width: double.infinity,
                  // alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color.fromARGB(150, 100, 100, 100),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 100, 100, 100),
                      ),
                      // SizedBox(height: 6),
                      Text(
                        "my.gerry139@gmail.com",
                        style: TextStyle(fontSize: 12, fontFamily: "FiraSans"),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: Color.fromARGB(150, 100, 100, 100),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: const Color.fromARGB(255, 100, 100, 100),
                      ),
                      // SizedBox(width: 4),
                      Spacer(),
                      // Spacer(),
                      Text(
                        '+62 812-8389-9252',
                        style: TextStyle(fontSize: 12, fontFamily: "FiraSans"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(125, 225, 145, 5),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Text(
                      'Postingan',
                      style: TextStyle(
                        fontFamily: "FiraSans",
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(125, 225, 145, 5),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Text(
                      'Followers',
                      style: TextStyle(
                        fontFamily: "FiraSans",
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(16),
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Deskripsi profil:",
                  style: TextStyle(fontSize: 12, fontFamily: "FiraSans"),
                ),
                Text(
                  "Panggilan Gerry, dikenal sebagai mahasiswa ∞ di Kampus. Sehari-hari selalu mempelajari hal baru yang ada di internet.",
                  style: TextStyle(fontSize: 12, fontFamily: "FiraSans"),
                ),
                SizedBox(height: 10),
                Text(
                  "Kutipan favorit:",
                  style: TextStyle(fontSize: 12, fontFamily: "FiraSans"),
                ),
                Text(
                  "Jika kamu tidak sanggup menahan lelahnya belajar, maka kamu harus sanggup menahan perihnya kebodohan - Imam Syafi'i",
                  style: TextStyle(fontSize: 12, fontFamily: "FiraSans"),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(24),
          //   child: Column(
          //     children: [Text("A"), Text("A"), Text("A"), Text("A")],
          //   ),
          // ),
        ],
      ),
    );
  }
}
