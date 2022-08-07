import 'package:flutter/material.dart';

class MyPlayScreen extends StatefulWidget {
  const MyPlayScreen({Key? key}) : super(key: key);

  @override
  State<MyPlayScreen> createState() => _MyPlayScreenState();
}

class _MyPlayScreenState extends State<MyPlayScreen> {
  int number = 0;
  String name = " Bundit nan";
  TextEditingController namecontroller = TextEditingController();
  void increments() {
    setState(() {
      number += 1;
    });
  }

  void decremaents() {
    setState(() {
      number -= 1;
    });
  }

  void changeName() {
    setState(() {
      name = namecontroller.text;
      namecontroller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PlayScreen"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("ชื่อ : ${name}"),
            Text("ค่าปัจจุบัน : ${number}"),
            Container(
              margin: EdgeInsets.all(10),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: namecontroller,
                      decoration: InputDecoration(
                          hintText: "ชื่อ-สกุล", label: Text("ชื่อ-สกุล")),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: increments,
                  child: Text("เพิ่มค่า"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: decremaents,
                  child: Text("ลดค่า"),
                ),
                ElevatedButton(
                  onPressed: changeName,
                  child: Text("เปลี่ยนชื่่อ"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
