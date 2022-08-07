import 'dart:html';

import 'package:card_swiper/card_swiper.dart';
import 'package:example2/interface/my_slider%20.dart';
import 'package:example2/screen/about_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MySlider> banners = [
    MySlider(
        id: 1,
        title: "hekhj",
        image:
            "http://www.toysmile.com/media/banner/bestsellers.jpg",
        link: "https://www.google.com"),
    MySlider(
        id: 2,
        title: "heejhklo",
        image:
            "http://www.toysmile.com/media/catalog/product/cache/1/image/420x/5dbab2e28bc9b44f677294c6401487eb/a/n/anime-school-bag-71.jpg",
        link: "https://www.youtube.com"),
    MySlider(
        id: 3,
        title: "heefghglo",
        image:
            "http://www.toysmile.com/media/catalog/product/cache/1/image/5dbab2e28bc9b44f677294c6401487eb/a/n/anime-school-bag-78.jpg",
        link: "https://www.facebook.com"),
  ];

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
            Container(
              height: 200,
              color: Colors.red,
              child: Swiper(
                itemBuilder: ( context,  index) {
                  return Image.network(
                    banners[index].image,
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 3,
                pagination: SwiperPagination(),
                control: SwiperControl(),
                autoplay: true,
              ),
            ),
            Text("สวัสดีฉันชื่อ $name"),
            Text("ฉัมีอายุ $age"),
            Text("ฉันหล่อมากเปนเรื่อง ${lookingGood ? "จริง" : "ไม่จริง"}"),
            Text(
                "หมฉันชื่อ: ${myDognames[0]} , ${myDognames[1]}, ${myDognames[2]}, และ ${myDognames[3]} "),
            ...myDognames.map((item) => Text(item)).toList(),
            Text("เพื่อนฉันชื่อ : ${user["name"]}"),
            Text(
                "แล้วเขาก็ : ${user["married"] ? "แต่งงานแล้ว" : "ยังไม่ได้แต่งงาน"}"),
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
