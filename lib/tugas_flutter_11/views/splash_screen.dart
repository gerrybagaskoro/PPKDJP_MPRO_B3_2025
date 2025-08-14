import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/extensions/navigations.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/preference/shared_preference.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/utils/app_image.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_6/start.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const id = "/splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    bool? isLogin = await PreferenceHandler.getLogin();

    Future.delayed(Duration(seconds: 3)).then((value) async {
      print(isLogin);
      if (isLogin == true) {
        context.pushReplacementNamed(Dashboard.id);
      } else {
        context.push(LoginScreen());
      }
    });
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
