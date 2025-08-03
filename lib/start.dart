import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profil Saya",
          style: TextStyle(
            fontFamily: "FiraSans",
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
        actions: [
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.message, color: Colors.white),
          Icon(Icons.settings, color: Colors.white),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nama: Gerry Bagaskoro Putro",
            style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontFamily: "FiraSans",
            ),
          ),
        ],
      ),
    );
  }
}
