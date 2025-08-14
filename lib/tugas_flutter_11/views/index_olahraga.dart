import 'package:flutter/material.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_10/textform.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/model/olahraga.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/sqflite/db_helper.dart';

class IndexOlahraga extends StatefulWidget {
  const IndexOlahraga({super.key});

  @override
  State<IndexOlahraga> createState() => _IndexOlahragaState();
}

class _IndexOlahragaState extends State<IndexOlahraga> {
  List<Olahraga> olahragaList = [];
  @override
  void initState() {
    super.initState();
    getOlahraga();
  }

  Future<void> getOlahraga() async {
    final dataOlahraga = await DbHelper.getAllOlahraga();
    setState(() {
      olahragaList = dataOlahraga;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 4,
          children: [
            // ListView()
            // // TextFormConst(hintText: "Nama", controller: nameController),
            // TextFormConst(hintText: "Email", controller: emailController),
            // TextFormConst(hintText: "Password", controller: passwordController),
            // ElevatedButton(
            //   onPressed: () async {
            //     final email = emailController.text.trim();
            //     final password = passwordController.text.trim();
            //     // final name = nameController.text.trim();
            //     // if (email.isEmpty || password.isEmpty || name.isEmpty) {
            //     if (email.isEmpty || password.isEmpty) {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         const SnackBar(
            //           content: Text("Email dan Password tidak boleh kosong!"),
            //         ),
            //       );
            //       return;
            //       // getUser();
            //       // setState(() {});
            //     }
            //     // final user = User(email: email, password: password, name: name);
            //     final user = User(email: email, password: password);
            //     await DbHelper.registerUser(user);
            //     Future.delayed(const Duration(seconds: 1)).then((value) {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         const SnackBar(content: Text("Pendaftaran akun berhasil")),
            //       );
            //     });
            //     getUser();
            //     setState(() {});
            //   },
            //   child: Text("Simpan Data Akun"),
            // ),
            // ListView.builder(
            //   physics: NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   itemCount: olahragaList.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     final Olahraga = olahragaList[index];
            //     return ListTile(
            //       // title: Text(_IndexOlahragaState.namaPeserta),
            //       // subtitle: Text(_IndexOlahragaState.email),

            //       // subtitle: Text(_IndexOlahragaState.password),
            //     );
            //   },
            // ),
            ListView.builder(
              itemCount: olahragaList.length,
              itemBuilder: (context, index) {
                final Olahraga = olahragaList[index];
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Olahraga.namaPeserta,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text("Email: ${Olahraga.email}"),
                        Text("Event: ${Olahraga.namaEvent}"),
                        Text("Asal Kota: ${Olahraga.asalKota}"),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
