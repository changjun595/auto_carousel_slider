
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> imageList = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("자동슬라이드"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: CarouselSlider.builder(
            itemCount: imageList.length,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
              return Container(
                width: width,
                child: Image.asset(imageList[itemIndex], fit: BoxFit.fitWidth)
              );
            },
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(milliseconds: 3000),
              viewportFraction : 1.0,
              enlargeCenterPage: false
            )),
      ),
    );
  }
}
