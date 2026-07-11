import 'dart:developer';

import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_book),
        title: Text("SwitchScreen"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        toolbarHeight: 40,
        actions: [
          Container(
            height: 25,
            width: 120,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                icon: Icon(Icons.search),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
              value: switchValue,
              onChanged: (value) {
                log("$value");
                switchValue = value;
                setState(() {});
              },
            ),

            SwitchListTile(
              title: Text("Dark/White Mood"),
              subtitle: Text("ON/OFF Mood"),
              value: switchValue,
              onChanged: (v) {
                switchValue = v;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
