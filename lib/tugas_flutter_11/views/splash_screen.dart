// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/extensions/navigations.dart';
import 'package:ppkdjp_mpro_b3_2025/preference/shared_preference.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/preference/shared_preference.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/utils/app_image.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_15/view/login_api_screen.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const id = "/splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    try {
      bool? isLogin = await PreferenceHandler.getLogin();
      String? token = await PreferenceHandler.getToken();

      print('isLogin: $isLogin');
      print('token: $token');

      await Future.delayed(Duration(seconds: 3));

      if (isLogin == true && token != null && token.isNotEmpty) {
        context.pushReplacementNamed(Dashboard.id);
      } else {
        context.pushReplacement(LoginAPIScreen());
      }
    } catch (e) {
      print('Error in isLogin: $e');
      context.pushReplacement(LoginAPIScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(AppImage.iconDashboard),
            Image.asset(AppImage.iconDashboard),
            const SizedBox(height: 24),
            const Text(
              "Dashboard",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
