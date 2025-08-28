import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkdjp_mpro_b3_2025/preference/shared_preference.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_15/api/endpoint/endpoint.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_15/model/get_user_model.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_15/model/register_model.dart';

class AuthenticationAPI {
  static Future<RegisterUserModel> registerUser({
    required String email,
    required String password,
    required String name,
  }) async {
    final url = Uri.parse(Endpoint.register);
    final response = await http.post(
      url,
      body: {"name": name, "email": email, "password": password},
    );
    if (response.statusCode == 200) {
      return RegisterUserModel.fromJson(json.decode(response.body));
    } else {
      final error = json.decode(response.body);
      throw Exception(error["message"] ?? "Register gagal");
    }
  }

  static Future<GetUserModel> getProfile() async {
    final url = Uri.parse(Endpoint.profile);
    final token = await PreferenceHandler.getToken();
    final response = await http.get(
      url,
      headers: {"Accept": "application/json", "Authorization": token},
    );
    if (response.statusCode == 200) {
      return GetUserModel.fromJson(json.decode(response.body));
    } else {
      final error = json.decode(response.body);
      throw Exception(error["message"] ?? "Register gagal");
    }
  }
}
