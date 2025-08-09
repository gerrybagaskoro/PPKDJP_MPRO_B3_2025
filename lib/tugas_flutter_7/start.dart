import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/extensions/navigations.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_3/start.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_4/start.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_5/start.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_7/drawer.dart';

class TugasFlutter7 extends StatefulWidget {
  const TugasFlutter7({super.key});
  static const id = "/main";

  @override
  State<TugasFlutter7> createState() => _TugasFlutter7State();
}

class _TugasFlutter7State extends State<TugasFlutter7> {
  int _selectedIndexDrawer = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Tugas3Flutter(),
    Tugas4Flutter(),
    Tugas5Flutter(),
    DrawerFlutter7(),
  ];
  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
    });
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas Flutter 7")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Checkbox"),
              onTap: () {
                onItemTap(0);
              },
            ),

            ListTile(
              title: Text("Switch"),
              onTap: () {
                onItemTap(1);
              },
            ),
            ListTile(
              title: Text("Dropdown"),
              onTap: () {
                onItemTap(2);
              },
            ),
            ListTile(
              title: Text("Tanggal"),
              onTap: () {
                onItemTap(3);
              },
            ),
            ListTile(
              title: Text("Jam"),
              onTap: () {
                onItemTap(4);
              },
            ),
          ],
        ),
      ),
      body: Center(child: _widgetOptions[_selectedIndexDrawer]),
    );
  }
}
