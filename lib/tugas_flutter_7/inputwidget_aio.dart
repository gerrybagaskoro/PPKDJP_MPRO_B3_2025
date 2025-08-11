// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/drawer.dart';

class CheckBoxAIO extends StatefulWidget {
  const CheckBoxAIO({super.key});
  static const id = "/checkbox";

  @override
  State<CheckBoxAIO> createState() => _CheckBoxAIOState();
}

class _CheckBoxAIOState extends State<CheckBoxAIO> {
  bool checkBoxAIO = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(title: Text("Syarat dan Ketentuan Pengguna")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Syarat dan Ketentuan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 600,
                child: SingleChildScrollView(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                    "\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                    "\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                    "\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              // SizedBox(height: 8),
              Spacer(),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.grey,
                    value: checkBoxAIO,
                    onChanged: (value) {
                      setState(() {
                        checkBoxAIO = value!;
                      });
                    },
                  ),
                  Text(
                    checkBoxAIO == true
                        ? "Lanjutkan pendaftaran diperbolehkan"
                        : "Anda belum bisa melanjutkan",
                  ),
                ],
              ),
              // Spacer(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class SwitchAIO extends StatefulWidget {
  const SwitchAIO({super.key});
  static const id = "/switch";

  @override
  State<SwitchAIO> createState() => _SwitchAIOState();
}

class _SwitchAIOState extends State<SwitchAIO> {
  bool switchAIO = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      backgroundColor: switchAIO ? Colors.black54 : null,
      appBar: AppBar(title: Text("Mode Gelap")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 8),
            Text(
              "Aktifkan Mode Gelap",
              style: TextStyle(color: switchAIO == true ? Colors.white : null),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Switch(
                  activeColor: Colors.white,
                  value: switchAIO,
                  onChanged: (value) {
                    setState(() {
                      switchAIO = value;
                    });
                  },
                ),
                Text(
                  switchAIO == true ? "Mode Gelap Aktif" : "Mode Terang Aktif",
                  style: TextStyle(
                    color: switchAIO == true ? Colors.white : null,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DropDownButtonAIO extends StatefulWidget {
  const DropDownButtonAIO({super.key});
  static const id = "/dropdown";

  @override
  State<DropDownButtonAIO> createState() => _DropDownButtonAIOState();
}

class _DropDownButtonAIOState extends State<DropDownButtonAIO> {
  String? pilihDropDown;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(title: Text("Produk")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Pilih Kategori Produk"),
            DropdownButton(
              value: pilihDropDown,
              hint: Text("Pilih Produk"),
              items: ["Elektronik", "Pakaian", "Makanan", "Lainnya"].map((
                String value,
              ) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
              onChanged: (value) {
                setState(() {});
                pilihDropDown = value!;
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DatePickerAIO extends StatefulWidget {
  const DatePickerAIO({super.key});
  static const id = "/datepicker";

  @override
  State<DatePickerAIO> createState() => _DatePickerAIOState();
}

class _DatePickerAIOState extends State<DatePickerAIO> {
  DateTime? pilihTanggal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(title: Text("Tanggal Lahir")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Pilih Tanggal Lahir"),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text("Pilih Tanggal Lahir"),
                onPressed: () async {
                  final DateTime? pickerDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1945),
                    lastDate: DateTime(2100),
                  );
                  if (pickerDate != null) {
                    setState(() {});
                    pilihTanggal = pickerDate;
                  }
                },
              ),
              SizedBox(height: 8),
              // Text(pilihTanggal.toString()),
              Text(
                pilihTanggal == null
                    ? "Tanggal belum dipilih"
                    : DateFormat(
                        'EEEE, dd MMMM yyyy',
                        "id_ID",
                      ).format(pilihTanggal!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TimePickerAIO extends StatefulWidget {
  const TimePickerAIO({super.key});
  static const id = "/timepicker";

  @override
  State<TimePickerAIO> createState() => _TimePickerAIOState();
}

class _TimePickerAIOState extends State<TimePickerAIO> {
  TimeOfDay? pilihWaktu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(title: Text("Waktu Pengingat")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Atur Pengingat"),
            SizedBox(height: 8),
            ElevatedButton(
              child: Text("Pilih Waktu Pengingat"),
              onPressed: () async {
                final TimeOfDay? pickerDate = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (pickerDate != null) {
                  setState(() {});
                  pilihWaktu = pickerDate;
                }
              },
            ),
            SizedBox(height: 8),
            Text(
              pilihWaktu == null
                  ? "Waktu belum dipilih"
                  : "Pengingat diatur pukul: ${pilihWaktu!.hour.toString()} : ${pilihWaktu!.minute.toString()}",
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const id = "/dashboard";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 8),
            Text(
              "Selamat datang di Dashbord.",
              style: TextStyle(
                fontFamily: "FiraSans",
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              "Slide ke kanan untuk membuka Menu Drawer",
              style: TextStyle(fontFamily: "FiraSans", fontSize: 14),
            ),
          ],
        )),
      ),
    );
  }
}

class AboutApps extends StatefulWidget {
  const AboutApps({super.key});
  static const id = "/aboutapp";

  @override
  State<AboutApps> createState() => _AboutAppsState();
}

class _AboutAppsState extends State<AboutApps> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150, // Tinggi header
              width: 150,
              color: const Color(0xFF00224F),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.task, size: 48, color: Colors.white),
                    SizedBox(height: 12),
                    Text(
                      "Tugas Flutter",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Tentang Aplikasi",
              style: TextStyle(
                fontFamily: "FiraSans",
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Aplikasi ini dibuat dengan Flutter & Dart",
              style: TextStyle(fontFamily: "FiraSans"),
            ),
            SizedBox(height: 8),
            Text(
              "Gerry Bagaskoro Putro",
              style: TextStyle(fontFamily: "FiraSans"),
            ),
            SizedBox(height: 8),
            Text("Versi: 1.0.0", style: TextStyle(fontFamily: "FiraSans")),
          ],
        ),
      ),
    );
  }
}
