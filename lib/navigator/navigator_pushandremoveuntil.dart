import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/navigator/nav/page_a.dart';

class HomePageNavigator extends StatelessWidget {
  const HomePageNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EULAandroid()),
            );
          },
          child: const Text('Selanjutnya'),
        ),
      ),
    );
  }
}

class EULAandroid extends StatelessWidget {
  const EULAandroid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar Akun")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PushAndRemoveUntil(),
              ),
            );
          },
          child: const Text('Daftar'),
        ),
      ),
    );
  }
}

class PushAndRemoveUntil extends StatelessWidget {
  const PushAndRemoveUntil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perjanjian Syarat & Ketentuan')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const PageA()),
              (Route<dynamic> route) => false,
            );
          },
          child: const Text('Saya Setuju dan Lanjutkan'),
        ),
      ),
    );
  }
}
