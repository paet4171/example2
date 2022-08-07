import 'package:flutter/material.dart';

class APIScreen extends StatefulWidget {
  const APIScreen({Key? key}) : super(key: key);

  @override
  State<APIScreen> createState() => _APIScreenState();
}

class _APIScreenState extends State<APIScreen> {


  List<String> tahiFood = [
    "Somtum",
    "Khaosoi",
    "Khaosiuoi",
    "Khaosuioi",
    "Khaosuioi",
    "Khaouisoi",
    "Khaoiusoi",
    "ujKhaosoi",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThaiFood"),
      ),
      body: ListView.builder(
        itemCount: tahiFood.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                tahiFood[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
