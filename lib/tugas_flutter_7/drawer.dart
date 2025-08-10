import 'package:flutter/material.dart';

class DrawerFlutter7 extends StatefulWidget {
  const DrawerFlutter7({super.key});

  @override
  State<DrawerFlutter7> createState() => _DrawerFlutter7State();
}

class _DrawerFlutter7State extends State<DrawerFlutter7> {
  void onItemTap(int index) {}
  bool diCheck = false;
  bool diCheckSwitch = false;
  String? dropdownSelect;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Drawer")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(),
              SizedBox(height: 8),
              Text("Aktifkan Mode Gelap"),
              Row(
                children: [
                  Switch(
                    activeColor: Colors.amber,
                    value: diCheckSwitch,
                    onChanged: (value) {
                      setState(() {
                        diCheckSwitch = value;
                      });
                    },
                  ),
                  Text(
                    diCheckSwitch == true
                        ? "Mode Gelap Aktif"
                        : "Mode Terang Aktif",
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text("Kategori Produk"),
              SizedBox(height: 8),
              DropdownButton(
                value: dropdownSelect,
                hint: Text("Pilih Kategori Produk"),
                items: ["Elektronik", "Pakaian", "Makanan"].map((String value) {
                  return DropdownMenuItem(value: value, child: Text(value));
                }).toList(),
                onChanged: (value) {
                  setState(() {});
                  dropdownSelect = value;
                },
              ),
              SizedBox(height: 8),
              Text("Pilih Tanggal Lahir"),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text("Pilih Tanggal Lahir"),
                onPressed: () async {
                  final DateTime? pickerDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (pickerDate != null) {
                    setState(() {});
                    selectedDate = pickerDate;
                  }
                },
              ),

              SizedBox(height: 24),
              Text("Atur Pengingat"),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text("Pilih Waktu Pengingat:"),
                onPressed: () async {
                  final TimeOfDay? pickerDate = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (pickerDate != null) {
                    setState(() {});
                    selectedTime = pickerDate;
                  }
                },
              ),
              SizedBox(height: 8),
              Text(
                selectedTime == null
                    ? "Pilih jam dahulu"
                    : "${selectedTime!.hour.toString()} : ${selectedTime!.minute.toString()}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Halaman A')),
    body: Center(
      child: ElevatedButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const PageB()),
          // );
        },
        child: Text("data"),
      ),
    ),
  );
}
