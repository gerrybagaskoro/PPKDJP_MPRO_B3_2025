import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/inputwidget_aio.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                MaterialPageRoute(builder: (context) => CheckBoxAIO()),
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
                MaterialPageRoute(builder: (context) => SwitchAIO()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_drop_down),
            title: Text("Dropdown"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DropDownButtonAIO()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.date_range),
            title: Text("Tanggal"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DatePickerAIO()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.timelapse),
            title: Text("Jam"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TimePickerAIO()),
              );
            },
          ),
        ],
      ),
    );
  }
}
