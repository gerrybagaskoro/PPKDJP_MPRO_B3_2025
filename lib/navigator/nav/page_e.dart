import 'package:flutter/material.dart';

class PageE extends StatefulWidget {
  const PageE({super.key});

  @override
  State<PageE> createState() => _PageAState();
}

class _PageAState extends State<PageE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Page E")));
  }
}
