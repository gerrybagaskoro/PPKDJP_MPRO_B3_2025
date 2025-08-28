import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/extensions/navigations.dart';
import 'package:ppkdjp_mpro_b3_2025/preference/shared_preference.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/utils/app_image_01.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_15/view/login_api_screen.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/dashboard.dart';

class SplashScreen01 extends StatefulWidget {
  const SplashScreen01({super.key});
  static const id = "/splash_screen";

  @override
  State<SplashScreen01> createState() => _SplashScreen01State();
}

class _SplashScreen01State extends State<SplashScreen01> {
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
        context.pushReplacement(LoginAPIScreen());
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
            Image.asset(AppImage01.iconGoogle),
            SizedBox(height: 20),
            Text("Welcome"),
          ],
        ),
      ),
    );
  }
}
