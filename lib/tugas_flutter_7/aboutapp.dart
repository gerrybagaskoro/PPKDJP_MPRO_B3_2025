import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

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
            child: Icon(Icons.task, size: 124, color: Colors.white),
          ),
          const SizedBox(height: 24),
          Text(
            'Tugas Flutter 7 & 8',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Versi 1.0.0',
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          Text(
            'Gerry Bagaskoro Putro',
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
    // Scaffold(
    //   appBar: AppBar(title: const Text("Tentang Aplikasi")),
    //   body: Container(
    //     padding: const EdgeInsets.all(8),
    //     margin: const EdgeInsets.all(8),
    //     child: SingleChildScrollView(
    //       padding: const EdgeInsets.all(8),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             height: 150,
    //             width: 150,
    //             color: const Color(0xFF00224F),
    //             child: const Center(
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Icon(Icons.task, size: 48, color: Colors.white),
    //                   SizedBox(height: 12),
    //                   Text(
    //                     "Tugas Flutter",
    //                     style: TextStyle(
    //                       color: Colors.white,
    //                       fontSize: 18,
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //           const SizedBox(height: 16),
    //           const Text(
    //             "Tentang Aplikasi",
    //             style: TextStyle(
    //               fontFamily: "FiraSans",
    //               fontWeight: FontWeight.bold,
    //               fontSize: 16,
    //             ),
    //           ),
    //           const SizedBox(height: 8),
    //           const Text(
    //             "Aplikasi ini dibuat dengan Flutter & Dart",
    //             style: TextStyle(fontFamily: "FiraSans"),
    //           ),
    //           const SizedBox(height: 8),
    //           const Text(
    //             "Gerry Bagaskoro Putro",
    //             style: TextStyle(fontFamily: "FiraSans"),
    //           ),
    //           const SizedBox(height: 8),
    //           const Text(
    //             "Versi: 1.0.0",
    //             style: TextStyle(fontFamily: "FiraSans"),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );