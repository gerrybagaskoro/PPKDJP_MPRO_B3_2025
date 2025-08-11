// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            "Syarat dan Ketentuan",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          // Syarat dan Ketentuan
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8),
                color: Colors.red.shade100,
              ),
              child: SingleChildScrollView(
                child: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                  "\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                  "\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                  "\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Checkbox
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                activeColor: Colors.black,
                value: checkBoxAIO,
                onChanged: (value) {
                  setState(() {
                    checkBoxAIO = value!;
                  });
                },
              ),
              Expanded(
                child: Text(
                  checkBoxAIO
                      ? "Lanjutkan pendaftaran diperbolehkan"
                      : "Anda belum bisa melanjutkan",
                  style: TextStyle(
                    color: checkBoxAIO ? Colors.green : Colors.red,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
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
    return Container(
      color: switchAIO ? Colors.black54 : null,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 8),
            Text(
              "Aktifkan Mode Gelap",
              style: TextStyle(color: switchAIO ? Colors.white : null),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  switchAIO ? "Mode Gelap Aktif" : "Mode Terang Aktif",
                  style: TextStyle(color: switchAIO ? Colors.white : null),
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
    return Container(
      child: Center(
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
                setState(() {
                  pilihDropDown = value!;
                });
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
    return Container(
      child: Center(
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
                    setState(() {
                      pilihTanggal = pickerDate;
                    });
                  }
                },
              ),
              SizedBox(height: 8),
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
    return Container(
      child: Center(
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
                  setState(() {
                    pilihWaktu = pickerDate;
                  });
                }
              },
            ),
            SizedBox(height: 8),
            Text(
              pilihWaktu == null
                  ? "Waktu belum dipilih"
                  : "Pengingat diatur pukul: ${pilihWaktu!.hour} : ${pilihWaktu!.minute}",
            ),
          ],
        ),
      ),
    );
  }
}
