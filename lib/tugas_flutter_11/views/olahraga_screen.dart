// import 'package:flutter/material.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/model/olahraga.dart';

// class OlahragaScreen extends StatefulWidget {
//   const OlahragaScreen({super.key});

//   @override
//   State<OlahragaScreen> createState() => _OlahragaScreenState();
// }

// class _OlahragaScreenState extends State<OlahragaScreen> {
//   final _formKey = GlobalKey<FormState>();

//   final _namaPesertaController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _namaEventController = TextEditingController();
//   final _asalKotaController = TextEditingController();

//   @override
//   void dispose() {
//     _namaPesertaController.dispose();
//     _emailController.dispose();
//     _namaEventController.dispose();
//     _asalKotaController.dispose();
//     super.dispose();
//   }

//   Future<void> _simpanOlahraga() async {
//     if (_formKey.currentState!.validate()) {
//       final olahraga = Olahraga(
//         namaPeserta: _namaPesertaController.text,
//         email: _emailController.text,
//         namaEvent: _namaEventController.text,
//         asalKota: _asalKotaController.text,
//       );

//       // await DbHelper.insertOlahraga(olahraga);

//       if (!mounted) return;
//       Navigator.pop(context, true);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(title: const Text("Olahraga")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: [
//               TextFormField(
//                 controller: _namaPesertaController,
//                 decoration: const InputDecoration(labelText: "Nama Peserta"),
//                 validator: (value) =>
//                     value == null || value.isEmpty ? "Wajib diisi" : null,
//               ),
//               TextFormField(
//                 controller: _emailController,
//                 decoration: const InputDecoration(labelText: "Email"),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (value) =>
//                     value == null || value.isEmpty ? "Wajib diisi" : null,
//               ),
//               TextFormField(
//                 controller: _namaEventController,
//                 decoration: const InputDecoration(labelText: "Nama Event"),
//                 validator: (value) =>
//                     value == null || value.isEmpty ? "Wajib diisi" : null,
//               ),
//               TextFormField(
//                 controller: _asalKotaController,
//                 decoration: const InputDecoration(labelText: "Asal Kota"),
//                 validator: (value) =>
//                     value == null || value.isEmpty ? "Wajib diisi" : null,
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _simpanOlahraga,
//                 child: const Text("Simpan Data"),
//               ),
//               ListView.builder(
//                 itemCount: Olahraga.length,
//                 itemBuilder: (context, index) {
//                   final catatan = Olahraga[index];
//                   return Card(
//                     elevation: 3,
//                     margin: const EdgeInsets.symmetric(
//                       horizontal: 12,
//                       vertical: 8,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(12),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             catatan.namaPeserta,
//                             style: const TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           const SizedBox(height: 4),
//                           Text("Email: ${catatan.email}"),
//                           Text("Event: ${catatan.namaEvent}"),
//                           Text("Asal Kota: ${catatan.asalKota}"),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// extension on Type {
//   operator [](int other) {}
// }
