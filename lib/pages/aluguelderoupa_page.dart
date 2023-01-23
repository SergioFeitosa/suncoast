import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:suncoast/data/dummy_data.dart';
import 'package:suncoast/models/aluguelderoupas.dart';
import 'package:suncoast/pages/roupa_page.dart';

class AlugueldeRoupaPage extends StatefulWidget {
  const AlugueldeRoupaPage({super.key});

  @override
  State<AlugueldeRoupaPage> createState() => _AlugueldeRoupaPageState();
}

class _AlugueldeRoupaPageState extends State<AlugueldeRoupaPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final aluguelderoupa =
        ModalRoute.of(context)?.settings.arguments as AlugueldeRoupas?;

    final List<Widget> imageSliders = DUMMY_IMAGES_ROUPAS_SOCIAL
        .map(
          // ignore: avoid_unnecessary_containers
          (item) => SizedBox(
            child: GestureDetector(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset(item["image"],
                        fit: BoxFit.cover, height: 150.0, width: 200.0),
                    Positioned(
                      bottom: 0.0,
                      // left: 0.0,
                      // right: 0.0,
                      child: Text(
                        '${item["name"]}',
                        // '${nameList[imgList.indexOf(item)]}',
                        style: const TextStyle(
                          color: Colors.black,
                          backgroundColor: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
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

    final List<Widget> imageSliders2 = DUMMY_IMAGES_ROUPAS_RIGOR
        .map(
          // ignore: avoid_unnecessary_containers
          (item) => SizedBox(
            child: GestureDetector(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset(item["image"],
                        fit: BoxFit.cover, height: 150.0, width: 200.0),
                    Positioned(
                      bottom: 0.0,
                      // left: 0.0,
                      // right: 0.0,
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
                  ],
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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: "ROUPA SOCIAL"),
                    style: TextStyle(fontSize: 25.0, height: 2.0),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  alignment: Alignment.center,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                      height: 200,
                      // aspectRatio: 2,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      viewportFraction: .6,
                      initialPage: 0,
                      autoPlay: false,
                      autoPlayInterval: const Duration(seconds: 4),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    ),
                    items: imageSliders,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      indicators(DUMMY_IMAGES_ROUPAS_SOCIAL.length, _current),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: "ROUPA A RIGOR"),
                    style: TextStyle(fontSize: 25.0, height: 2.0),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.center,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                      height: 200,
                      // aspectRatio: 2,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      viewportFraction: .6,
                      initialPage: 0,
                      autoPlay: false,
                      autoPlayInterval: const Duration(seconds: 4),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    ),
                    items: imageSliders2,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      indicators(DUMMY_IMAGES_ROUPAS_RIGOR.length, _current),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(images[pagePosition]))),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      // ignore: avoid_print
      print(pagePosition);

      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: const EdgeInsets.all(10),
      child: Image.asset(images[pagePosition]),
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}
