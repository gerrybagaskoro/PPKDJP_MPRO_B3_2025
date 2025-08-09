import 'package:flutter/material.dart';

class NavigatorPushAndReplacement extends StatelessWidget {
  const NavigatorPushAndReplacement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HalamanA()),
              (Route<dynamic> route) => false,
            );
          },
          child: const Text('Login & Masuk ke Home'),
        ),
      ),
    );
  }
}

// =======================
// Halaman A
// =======================
class HalamanA extends StatelessWidget {
  const HalamanA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman A')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HalamanB()),
            );
          },
          child: const Text('Ke Halaman B'),
        ),
      ),
    );
  }
}

class HalamanB extends StatelessWidget {
  const HalamanB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman B')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Ganti Halaman B dengan Halaman C (B hilang, A masih ada)
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(builder: (context) => const PageC()),
                // );
              },
              child: const Text('Ke Halaman C (pushReplacement)'),
            ),
          ),
        ],
      ),
    );
  }
}

// =======================
// Halaman C
// =======================
class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman C')),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Ini Halaman C\nCoba tekan tombol Back',
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Kembali'),
          ),
        ],
      ),
    );
  }
}
