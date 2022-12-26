// ignore: file_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:suncoast/models/bar.dart';

class BarPage extends StatelessWidget {
  const BarPage({super.key});
  @override
  Widget build(BuildContext context) {
    final bar = ModalRoute.of(context)?.settings.arguments as Bar;

    List<String> images = [
      "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrW  ZlbWU.jpg",
      "https://wallpaperaccess.com/full/2637581.jpg",
      "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      "https://wallpaperaccess.com/full/2637581.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${bar.nome} -- Pratos',
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.amber,
            child: const ListTile(
              leading: Text(
                'Pratos Regionais',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(height: 100.0),
            items: [0, 1, 2, 3, 4].map((i) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: const BoxDecoration(color: Colors.blueAccent),
                  child: Image.network(images[i]),
                );
              });
            }).toList(),
          ),
        ],
      ),
    );
  }
}
