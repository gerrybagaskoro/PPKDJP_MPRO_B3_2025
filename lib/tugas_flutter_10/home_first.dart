import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/extensions/navigations.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_10/home_second.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_10/textform.dart';

class HomeFirst extends StatefulWidget {
  const HomeFirst({super.key});

  @override
  State<HomeFirst> createState() => _HomeFirstState();
}

class _HomeFirstState extends State<HomeFirst> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController kotaDomilisiController = TextEditingController();

  // Fungsi validator
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email tidak boleh kosong';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Masukkan email yang valid';
    }
    return null;
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nama tidak boleh kosong';
    }
    if (value.length < 3) {
      return 'Nama terlalu pendek';
    }
    return null;
  }

  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    // Jika diisi, harus berupa angka
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Hanya angka yang diperbolehkan';
    }

    return null;
  }

  String? _validateDomisili(String? value) {
    if (value == null || value.isEmpty) {
      return 'Domisili tidak boleh kosong';
    }
    return null;
  }

  // Fungsi untuk validasi semua field
  bool __validasiSemua() {
    bool isValid = true;

    if (_validateEmail(emailController.text) != null) isValid = false;
    if (_validateName(nameController.text) != null) isValid = false;
    if (_validatePhone(phoneController.text) != null) isValid = false;
    if (_validateDomisili(kotaDomilisiController.text) != null) isValid = false;

    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 4,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Formulir Pendaftaran Kelas Flutter',
                  style: TextStyle(
                    fontFamily: "FiraSans",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text("Nama Lengkap:"),
            TextFormConst(
              hintText: "Masukkan Nama Lengkap Anda",
              controller: nameController,
              validator: _validateName,
              onChanged: (p0) => setState(() {}),
            ),
            SizedBox(height: 6),
            Text("Email:"),
            TextFormConst(
              hintText: "Masukkan Email",
              controller: emailController,
              validator: _validateEmail,
              onChanged: (p0) => setState(() {}),
            ),
            SizedBox(height: 6),
            Text("No. Telp:"),
            TextFormConst(
              hintText: "Masukkan No. Telp",
              controller: phoneController,
              validator: _validatePhone,
              onChanged: (p0) => setState(() {}),
              // (p0) {
              //   setState(() {});
              // },
            ),
            SizedBox(height: 6),
            Text("Domisili Kota:"),
            TextFormConst(
              hintText: "Masukkan Domisili Kota Anda",
              controller: kotaDomilisiController,
              validator: _validateDomisili,
              onChanged: (p0) => setState(() {}),
              // (p0) {
              //   setState(() {});
              // },
            ),
            SizedBox(height: 6),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (__validasiSemua()) {
                    // Tampilkan snackbar sebelum navigasi
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Terima kasih, ${nameController.text} dari ${kotaDomilisiController.text} telah mendaftar.',
                          style: TextStyle(fontSize: 16),
                        ),
                        duration: Duration(seconds: 3),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );

                    // Tunggu sebentar sebelum navigasi
                    Future.delayed(Duration(milliseconds: 1500), () {
                      context.push(
                        HomeSecond(
                          email: emailController.text,
                          name: nameController.text,
                          phone: phoneController.text,
                          address: kotaDomilisiController.text,
                        ),
                      );
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Silakan periksa kembali data Anda'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                child: Text("Daftar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
