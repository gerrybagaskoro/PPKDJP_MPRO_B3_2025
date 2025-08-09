import 'package:flutter/material.dart';
// import 'package:ppkdjp_mpro_b3_2025/navigator/nav/page_d.dart';

class PageC extends StatefulWidget {
  const PageC({super.key});

  @override
  State<PageC> createState() => _PageAState();
}

class _PageAState extends State<PageC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page C - Home Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const PageD()),
            // );
            Navigator.pushNamed(context, '/agreement');
          },
          child: const Text('Ke Syarat & Ketentuan Pengguna'),
        ),
      ),
    );
  }
}
