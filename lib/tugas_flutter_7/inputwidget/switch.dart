import 'package:flutter/material.dart';

class Flutter7Switch extends StatefulWidget {
  const Flutter7Switch({super.key});

  @override
  State<Flutter7Switch> createState() => _Flutter7SwitchState();
}

class _Flutter7SwitchState extends State<Flutter7Switch> {
  bool switchDiCek = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(),
          Text("Aktifkan Mode Gelap", style: TextStyle(fontFamily: "FiraSans")),
          Row(
            children: [
              Switch(
                activeColor: Colors.red,
                value: switchDiCek,
                onChanged: (value) {
                  setState(() {
                    switchDiCek = value;
                  });
                },
              ),
              Text(
                switchDiCek == true ? "Mode Gelap Aktif" : "Mode Terang Aktif",
                style: TextStyle(fontFamily: "FiraSans"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
