// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Flutter7CheckBoxAIO extends StatefulWidget {
  const Flutter7CheckBoxAIO({super.key});
  static const id = "/checkbox";

  @override
  State<Flutter7CheckBoxAIO> createState() => _Flutter7CheckBoxAIOState();
}

class _Flutter7CheckBoxAIOState extends State<Flutter7CheckBoxAIO> {
  // bool switchDarkModeAIO = false;
  bool checkBoxAIO = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Syarat dan Ketentuan",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          SizedBox(
            height: 500,
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
          // SizedBox(height: 8),
        ],
      ),
    );
  }
}

class Flutter7SwitchAIO extends StatefulWidget {
  const Flutter7SwitchAIO({super.key});
  static const id = "/switch";

  @override
  State<Flutter7SwitchAIO> createState() => _Flutter7SwitchAIOState();
}

class _Flutter7SwitchAIOState extends State<Flutter7SwitchAIO> {
  bool switchIO = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(4),
      // padding: const EdgeInsets.all(4.0),
      color: switchIO == true ? Colors.black87 : null,
      child: Column(
        children: [
          SizedBox(height: 8),
          Text(
            "Aktifkan Mode Gelap",
            style: TextStyle(color: switchIO == true ? Colors.white : null),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Switch(
                activeColor: Colors.white,
                value: switchIO,
                onChanged: (value) {
                  setState(() {
                    switchIO = value;
                  });
                },
              ),
              Text(
                switchIO == true ? "Mode Gelap Aktif" : "Mode Terang Aktif",
                style: TextStyle(color: switchIO == true ? Colors.white : null),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Flutter7DropDownButtonAIO extends StatefulWidget {
  const Flutter7DropDownButtonAIO({super.key});
  static const id = "/dropdown";

  @override
  State<Flutter7DropDownButtonAIO> createState() =>
      _Flutter7DropDownButtonAIOState();
}

class _Flutter7DropDownButtonAIOState extends State<Flutter7DropDownButtonAIO> {
  String? pilihDropDown;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
    );
  }
}

class Flutter7DatePickerAIO extends StatefulWidget {
  const Flutter7DatePickerAIO({super.key});
  static const id = "/datepicker";

  @override
  State<Flutter7DatePickerAIO> createState() => _Flutter7DatePickerAIOState();
}

class _Flutter7DatePickerAIOState extends State<Flutter7DatePickerAIO> {
  DateTime? pilihTanggal;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
    );
  }
}

class Flutter7TimePickerAIO extends StatefulWidget {
  const Flutter7TimePickerAIO({super.key});
  static const id = "/timepicker";

  @override
  State<Flutter7TimePickerAIO> createState() => _Flutter7TimePickerAIOState();
}

class _Flutter7TimePickerAIOState extends State<Flutter7TimePickerAIO> {
  TimeOfDay? pilihWaktu;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
          // Text(pilihTanggal.toString()),
          Text(
            pilihWaktu == null
                ? "Waktu belum dipilih"
                : "Pengingat diatur pukul: ${pilihWaktu!.hour.toString()} : ${pilihWaktu!.minute.toString()}",
            // : "Pengingat diatur pukul: ${pilihWaktu!.hour.toString()} : ${pilihWaktu!.minute.toString()}",
          ),
        ],
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
      child: Column(
        children: [
          Text("Tentang Aplikasi", style: TextStyle(fontFamily: "FiraSans")),
          SizedBox(height: 8),
          Text("Aplikasi ini dibuat dengan Flutter & Dart"),
          SizedBox(height: 8),
          Text("Gerry"),
          SizedBox(height: 8),
          Text("Versi: 1.0.0"),
        ],
      ),
    );
  }
}
