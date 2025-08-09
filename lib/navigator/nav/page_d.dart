import 'package:flutter/material.dart';

class PageD extends StatefulWidget {
  const PageD({super.key});

  @override
  State<PageD> createState() => _PageAState();
}

class _PageAState extends State<PageD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page D - Login Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const PageE()),
            // );
            Navigator.pushNamed(context, '/login');
          },
          child: const Text('Login Sekarang'),
        ),
      ),
    );
  }
}
