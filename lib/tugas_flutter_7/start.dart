import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/extensions/navigations.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_5/start.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/drawer.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/inputwidget/checkbox.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/inputwidget/switch.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/inputwidget_aio.dart';

class TugasFlutter7 extends StatefulWidget {
  const TugasFlutter7({super.key});
  static const id = "/start";

  @override
  State<TugasFlutter7> createState() => _TugasFlutter7State();
}

class _TugasFlutter7State extends State<TugasFlutter7> {
  int _pilihIndexDrawer = 0;
  final List<Widget> _pages = [
    // Flutter7CheckBox(),
    // Flutter7Switch(),
    // Flutter7DropDownButton(),
    // Flutter7DatePicker(),
    // Flutter7TimePicker(),

    // Input Widget AIO (ALL IN ONE File)
    HomePage(),
    AboutApps(),
    // Flutter7CheckBoxAIO(),
    // Flutter7SwitchAIO(),
    // Flutter7DropDownButtonAIO(),
    // Flutter7DatePickerAIO(),
    // Flutter7TimePickerAIO(),
  ];
  void onItemTap(int index) {
    setState(() {
      _pilihIndexDrawer = index;
    });
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tugas Flutter 7 & 8",
          style: TextStyle(fontFamily: "FiraSans", fontSize: 20),
        ),
      ),
      // Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 256, // Tinggi header
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
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text("Checkbox"),
              onTap: () {
                // onItemTap(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Flutter7CheckBoxAIO(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.switch_access_shortcut),
              title: Text("Switch"),
              onTap: () {
                // onItemTap(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Flutter7SwitchAIO()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_drop_down),
              title: Text("Dropdown"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Flutter7DropDownButtonAIO(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text("Tanggal"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Flutter7DatePickerAIO(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.timelapse),
              title: Text("Jam"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Flutter7TimePickerAIO(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.android_outlined),
            label: 'About',
          ),
        ],
        currentIndex: _pilihIndexDrawer,
        selectedItemColor: const Color(0xFF00224F),
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          print(value);
          print("Nilai SelecetedIndex Before : $_pilihIndexDrawer");

          print("Nilai BotNav : $value");
          setState(() {
            _pilihIndexDrawer = value;
          });
          print("Nilai SelecetedIndex After: $_pilihIndexDrawer");
        },
        // onTap: _onItemTapped,
      ),
      body: Center(child: _pages[_pilihIndexDrawer]),
    );
  }
}
