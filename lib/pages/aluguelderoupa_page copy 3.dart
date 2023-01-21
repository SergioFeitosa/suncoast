import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:suncoast/data/dummy_data.dart';
import 'package:suncoast/models/aluguelderoupas.dart';
import 'package:suncoast/pages/roupa_page.dart';

class AlugueldeRoupaPage extends StatelessWidget {
  const AlugueldeRoupaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final aluguelderoupa =
        ModalRoute.of(context)?.settings.arguments as AlugueldeRoupas?;

    final List<Widget> imageSliders = DUMMY_IMAGES_ROUPAS_SOCIAL
        .map(
          // ignore: avoid_unnecessary_containers
          (item) => Container(
            child: GestureDetector(
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Image.asset(item["image"],
                              fit: BoxFit.cover, width: 700.0),
                          Positioned(
                            bottom: 0.0,
                            // left: 0.0,
                            // right: 0.0,
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(0, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              child: Text(
                                '${item["name"]}',
                                // '${nameList[imgList.indexOf(item)]}',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RoupaPage(
                            aluguelderoupas: aluguelderoupa,
                            routeName: '${item["routeName"]}',
                          ),
                        ),
                      ),
                    }),
          ),
        )
        .toList();

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Aluguel de Roupas -- Categorias',
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: Container(
          // margin: EdgeInsets.symmetric(horizontal: 5),
          alignment: Alignment.center,
          child: CarouselSlider(
            options: CarouselOptions(
              height: 400,
              // aspectRatio: 2,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              viewportFraction: .5,
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
            ),
            items: imageSliders,
          ),
        ),
      ),
    );
  }
}
