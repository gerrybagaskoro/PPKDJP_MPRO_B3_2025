import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/views/splash_screen.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_15/view/login_api_screen.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_15/view/post_api_screen.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_6/start.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/start.dart';

void main() {
  initializeDateFormatting("id_ID");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        datePickerTheme: DatePickerThemeData(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        '/loginscreen': (context) => LoginScreen(),
        LoginAPIScreen.id: (context) => LoginAPIScreen(),
        SplashScreen.id: (context) => SplashScreen(),
        '/homepage': (context) => HomePage(),
        PostApiScreen.id: (context) => PostApiScreen(),
      },
    );
  }
}
