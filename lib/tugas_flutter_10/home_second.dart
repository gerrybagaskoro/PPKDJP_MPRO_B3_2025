import 'package:flutter/material.dart';

class HomeSecond extends StatelessWidget {
  const HomeSecond({
    super.key,
    required this.name,
    required this.email,
    this.phone,
    required this.address,
  });
  final String name;
  final String email;
  final String? phone;
  final String address;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            email,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            phone ?? "Tidak ada nomor telepon",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            address,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
