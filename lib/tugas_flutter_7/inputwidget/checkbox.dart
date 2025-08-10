import 'package:flutter/material.dart';

class Flutter7CheckBox extends StatefulWidget {
  const Flutter7CheckBox({super.key});

  @override
  State<Flutter7CheckBox> createState() => _Flutter7CheckBoxState();
}

class _Flutter7CheckBoxState extends State<Flutter7CheckBox> {
  bool checkboxDiCek = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(),
          Text("Syarat & Ketentuan", style: TextStyle(fontFamily: "FiraSans")),
          SizedBox(height: 16),
          Container(
            color: Colors.blue,
            height: 200,
            width: 400,
            // child: Text(""),
          ),
          SizedBox(height: 16),
          Text(
            "Saya menyetujui semua persyaratan yang berlaku",
            style: TextStyle(fontFamily: "FiraSans"),
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.red,
                value: checkboxDiCek,
                onChanged: (value) {
                  setState(() {
                    checkboxDiCek = value!;
                  });
                },
              ),
              Text(
                checkboxDiCek == true
                    ? "Lanjutkan pendaftaran diperbolehkan"
                    : "Anda belum bisa melanjutkan",
                style: TextStyle(fontFamily: "FiraSans"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
