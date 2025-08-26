import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_14/model/fake_store_model.dart';

Future<List<Welcome>> getItem() async {
  final response = await http.get(
    Uri.parse("https://fakestoreapi.com/products"),
  );
  print(response.body);
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => Welcome.fromJson(json)).toList();
  } else {
    throw Exception("Gagal memuat data");
  }
}
