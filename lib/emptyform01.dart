import 'package:flutter/material.dart';

class HalamanKosong01 extends StatefulWidget {
  const HalamanKosong01({super.key});

  @override
  State<HalamanKosong01> createState() => _HalamanKosong01State();
}

class _HalamanKosong01State extends State<HalamanKosong01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Halaman ke-dua", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF00224F),
      ),
      backgroundColor: const Color(0xFF00224F),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Kembali ke halaman sebelumnya (LoginPage)
            Navigator.pop(context);
          },
          child: const Text("Kembali ke login page"),
        ),
      ),
    );
  }
}
