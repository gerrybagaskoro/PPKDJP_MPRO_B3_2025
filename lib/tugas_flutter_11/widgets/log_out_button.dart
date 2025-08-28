import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/extensions/navigations.dart';
import 'package:ppkdjp_mpro_b3_2025/preference/shared_preference.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_15/view/login_api_screen.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/preference/shared_preference.dart';

class LogOutButton extends StatelessWidget {
  static const id = "/logout";
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        PreferenceHandler.removeLogin();
        PreferenceHandler.removeToken();

        context.pushReplacementNamed(LoginAPIScreen.id);
      },
      child: Text("Keluar"),
    );
  }
}
