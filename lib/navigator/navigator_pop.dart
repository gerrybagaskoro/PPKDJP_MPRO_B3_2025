import 'package:flutter/material.dart';

class NavigatorPop extends StatelessWidget {
  const NavigatorPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Awal - Navigator Pop")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Pindah ke halaman kedua
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NavPopPage2()),
            );
          },
          child: const Text("Ke Halaman Selanjutnya"),
        ),
      ),
    );
  }
}

class NavPopPage2 extends StatelessWidget {
  const NavPopPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Kedua - Navigator Pop")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Kembali ke halaman sebelumnya (HomePage)
            Navigator.pop(context);
          },
          child: const Text("Kembali ke halaman awal"),
        ),
      ),
    );
  }
}
