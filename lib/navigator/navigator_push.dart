import 'package:flutter/material.dart';

class NavigatorPush extends StatelessWidget {
  const NavigatorPush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Awal - Navigator Push")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NavigatorPush01()),
            );
          },
          child: const Text('Ke halaman selanjutnya'),
        ),
      ),
    );
  }
}

class NavigatorPush01 extends StatelessWidget {
  const NavigatorPush01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Kedua - Navigator Push")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NavigatorPush()),
            );
          },
          child: const Text('Kembali'),
        ),
      ),
    );
  }
}
