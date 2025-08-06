import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Tugas6FlutterSlicing01 extends StatefulWidget {
  const Tugas6FlutterSlicing01({super.key});

  @override
  State<Tugas6FlutterSlicing01> createState() => _Tugas6FlutterSlicing01State();
}

class _Tugas6FlutterSlicing01State extends State<Tugas6FlutterSlicing01> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00224F),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF00224F),
        title: Text(
          "Login",
          style: TextStyle(
            fontSize: 24,
            fontFamily: "FiraSans",
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Icon(Icons.arrow_back_ios, size: 24, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_vert, size: 24, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 48),
            Text(
              "Hello Welcome Back",
              style: TextStyle(
                fontSize: 26,
                fontFamily: "FiraSans",
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Welcome back please sign in again",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "FiraSans",
                fontWeight: FontWeight.w100,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 64),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 12,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hint: Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "FiraSans",
                              color: Colors.white,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email tidak boleh kosong";
                          }
                          if (!value.contains("@")) {
                            return "Email tidak valid";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hint: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "FiraSans",
                              color: Colors.white,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password tidak boleh kosong";
                          }
                          return null;
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          //Error dan sukses menggunakan ScaffoldMessenger dan formKey
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Form Validasi Berhasil")),
                            );
                          }

                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Email anda tidak sesuai"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("Silakan Masukkan email yang valid"),
                                    SizedBox(height: 20),
                                    Lottie.asset(
                                      'assets/images/animations/success.json',
                                      width: 90,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    child: Text("Batal"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: Text("Ok, Siap"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text('Login'),
                      ),
                      // Tugas5Flutter(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
