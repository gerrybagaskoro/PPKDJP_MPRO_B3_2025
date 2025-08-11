import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_6/start.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/start.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/start.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_6/start01.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_4/start.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_4/start01.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_4/start.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_5/start01.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_4/start02.dart';
// import 'package:ppkdjp_mpro_b3_2025/start.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_2/start.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_3/start.dart';

void main() {
  initializeDateFormatting("id_ID");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        datePickerTheme: DatePickerThemeData(),
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // Menggunakan Navigator.pushNamed
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomePage(),
        // '/start': (context) => TugasFlutter7(),
        // '/checkbox': (context) => CheckBoxAIO(),
        // '/switch': (context) => SwitchAIO(),
        // '/dropdown': (context) => DropDownButtonAIO(),
        // '/datepicker': (context) => DatePickerAIO(),
        // '/timepicker': (context) => TimePickerAIO(),

        // Flutter7CheckBoxAIO.id: (context) => Flutter7CheckBoxAIO(),
        // Flutter7SwitchAIO.id: (context) => Flutter7SwitchAIO(),
        // Flutter7DropDownButtonAIO.id: (context) => Flutter7SwitchAIO(),

        // Flutter7TimePickerAIO.id: (context) => Flutter7TimePickerAIO(),
        // AboutApps.id: (context) => AboutApps(),
      },
    );
  }
}
