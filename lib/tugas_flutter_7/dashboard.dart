// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  static const id = "/dashboard";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: const Color(0xFF00224F), // background container
              borderRadius: BorderRadius.circular(20), // sudut melengkung
            ),
            child: Icon(Icons.dashboard, size: 124, color: Colors.white),
          ),
          const SizedBox(height: 24),
          Text(
            'Selamat datang di Dashboard',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Geser ke kanan untuk membuka Drawer',
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          Text('', style: TextStyle(fontSize: 16, color: Colors.grey[700])),
        ],
      ),
    );
  }
}
