import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  // const DrawerMenu({super.key});
  const DrawerMenu({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
    // required BottomNavigationBar bottomNavigationBar,
  });

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
            selected: selectedIndex == 2,
            onTap: () => onItemTapped(2),
          ),
          ListTile(
            leading: Icon(Icons.switch_access_shortcut),
            title: Text("Switch"),
            selected: selectedIndex == 3,
            onTap: () => onItemTapped(3),
          ),
          ListTile(
            leading: Icon(Icons.arrow_drop_down),
            title: Text("Dropdown"),
            selected: selectedIndex == 4,
            onTap: () => onItemTapped(4),
          ),
          ListTile(
            leading: Icon(Icons.date_range),
            title: Text("Tanggal"),
            selected: selectedIndex == 5,
            onTap: () => onItemTapped(5),
          ),
          ListTile(
            leading: Icon(Icons.timelapse),
            title: Text("Jam"),
            selected: selectedIndex == 6,
            onTap: () => onItemTapped(6),
          ),
        ],
      ),
    );
  }
}
