// ignore_for_file: avoid_unnecessary_containers, unnecessary_new

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:suncoast/pages/roupa_page.dart';

final List<Map> robot = [
  {
    "name": "Calça Social",
    "image": 'assets/images/roupa/social/calca.jpg',
    "routeName": "1"
  },
  {
    "name": "Camisa Social",
    "image": 'assets/images/roupa/social/camisa.jpg',
    "routeName": "2"
  },
  {
    "name": "Calça Esporte Social",
    "image": 'assets/images/roupa/social/calcaprod001.jpg',
    "routeName": "3"
  },
];

class AlugueldeRoupaPage extends StatelessWidget {
  const AlugueldeRoupaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Robot')),
      body: Container(
        // margin: EdgeInsets.symmetric(horizontal: 5),
        alignment: Alignment.center,
        child: CarouselSlider(
          options: CarouselOptions(height: 150, enableInfiniteScroll: false),
          items: robot
              .map((item) => Container(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RoupaPage(
                                  //aluguelderoupas: aluguelderoupa,
                                  routeName: item["routeName"]))),
                      child: Container(
                          margin: const EdgeInsets.all(15),
                          width: double.infinity,
                          child: Image.asset(
                            item["image"],
                          )),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
