import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_9/listview.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_9/listview_map_string.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_9/model.dart';

// import 'drawer.dart';
import 'aboutapp.dart';
import 'dashboard.dart';
import 'inputwidget_aio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Semua halaman jadi satu list (0-2: bottomnav, 3-6: drawer)
  final List<Widget> _pages = [
    Dashboard(), // index 0
    AboutApp(), // index 1
    CheckBoxAIO(), // index 2
    SwitchAIO(), // index 3
    DropDownButtonAIO(), // index 4
    DatePickerAIO(), // index 5
    TimePickerAIO(), // index 6
    ListViewTugasNo1(), // Index 7
    ListViewTugasNo2(), // Index 8
    ListViewTugasNo3(), // Index 9
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onDrawerTapped(int index) {
    Navigator.pop(context); // Tutup drawer
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Toko Snack",
          style: TextStyle(fontFamily: "FiraSans", fontSize: 20),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF00224F)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.task, size: 64, color: Colors.white),
                  Text(
                    "Tugas Flutter 7",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // Text(
              //   'Menu Drawer',
              //   style: TextStyle(color: Colors.white, fontSize: 20),
              // ),
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: const Text("CheckBox"),
              onTap: () => _onDrawerTapped(2),
            ),
            ListTile(
              leading: Icon(Icons.switch_access_shortcut),
              title: const Text("Switch"),
              onTap: () => _onDrawerTapped(3),
            ),
            ListTile(
              leading: Icon(Icons.arrow_drop_down),
              title: Text("Dropdown"),
              onTap: () => _onDrawerTapped(4),
            ),
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text("Tanggal"),
              onTap: () => _onDrawerTapped(5),
            ),
            ListTile(
              leading: Icon(Icons.timelapse),
              title: Text("Jam"),
              onTap: () => _onDrawerTapped(6),
            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: Text("ListViewString"),
              onTap: () => _onDrawerTapped(7),
            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: Text("ListViewMap"),
              onTap: () => _onDrawerTapped(8),
            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: Text("ListViewModel"),
              onTap: () => _onDrawerTapped(9),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex > 1 ? 0 : _selectedIndex,
        // Kalau lagi buka drawer menu, bottomnav tetap highlight dashboard
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.android), label: 'About'),
          // BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        ],
      ),
    );
  }
}
