import 'dart:html';

import 'package:example2/screen/about_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = " Bundit nan";
  int age = 35;
  bool lookingGood = true;

  List<String> myDognames = ["loogtoo", "paveena", "maik", "Paravit"];
  Map<String, dynamic> user = {
    "id": 1,
    "name": "John Doe",
    "sex": "male",
    "married": false
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("สวัสดีฉันชื่อ $name"),
            Text("ฉัมีอายุ $age"),
            Text("ฉันหล่อมากเปนเรื่อง ${lookingGood ? "จริง" : "ไม่จริง"}"),
            Text("หมฉันชื่อ: ${myDognames[0] } , ${myDognames[1]}, ${myDognames[2]}, และ ${myDognames[3]} "),
            ...myDognames.map((item) => Text(item)).toList(),
            Text("เพื่อนฉันชื่อ : ${user["name"]}"),
            Text("แล้วเขาก็ : ${user["married"] ? "แต่งงานแล้ว" : "ยังไม่ได้แต่งงาน"}"),
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutScreen();
                    },
                  ),
                )
              },
              child: Text("Go to about screen"),
            ),
          ],
        ),
      ),
    );
  }
}
