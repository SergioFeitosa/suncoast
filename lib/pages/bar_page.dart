import 'package:flutter/material.dart';
import 'package:suncoast/data/dummy_data.dart';
import 'package:suncoast/models/bar.dart';
import 'package:suncoast/pages/prato_page.dart';

class BarPage extends StatelessWidget {
  const BarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bar = ModalRoute.of(context)?.settings.arguments as Bar?;

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Categorias xsss',
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: Carousel(bar: bar),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  final Bar? bar;

  const Carousel({
    Key? key,
    this.bar,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late Bar bar;

  late PageController _pageController;

  late int pratoEscolhido;

  int activePage = 0;
  int activePage2 = 0;
  int activePage3 = 0;
  int activePage4 = 0;
  int activePage5 = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    //final bar = ModalRoute.of(context)?.settings.arguments as Bar?;

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(hintText: "PRATOS REGIONAIS"),
                style: TextStyle(fontSize: 25.0, height: 2.0),
              ),
            ),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PratoPage(
                          bar: widget.bar,
                          pratoEscolhido:
                              pratoEscolhido++), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: DUMMY_IMAGES_PRATOS_REGIONAIS.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage;
                      pratoEscolhido = activePage;
                      return slider(
                          DUMMY_IMAGES_PRATOS_REGIONAIS, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(
                    DUMMY_IMAGES_PRATOS_REGIONAIS.length, activePage)),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(hintText: "PRATOS EXECUTIVOS"),
                  style:
                      TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
                )),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PratoPage(
                          pratoEscolhido:
                              'PRATOS Executivos'), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: DUMMY_IMAGES_PRATOS_EXECUTIVOS.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage2 = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage2;
                      return slider(
                          DUMMY_IMAGES_PRATOS_EXECUTIVOS, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(
                    DUMMY_IMAGES_PRATOS_EXECUTIVOS.length, activePage2)),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(hintText: "PORÇÕES"),
                  style:
                      TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
                )),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PratoPage(
                          pratoEscolhido: 'Porções'), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: DUMMY_IMAGES_PORCOES.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage3 = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage3;
                      return slider(DUMMY_IMAGES_PORCOES, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(DUMMY_IMAGES_PORCOES.length, activePage3)),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(hintText: "PEIXES"),
                  style:
                      TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
                )),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PratoPage(
                          pratoEscolhido: 'Peixes'), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: DUMMY_IMAGES_PEIXES.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage4 = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage4;
                      return slider(DUMMY_IMAGES_PEIXES, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(DUMMY_IMAGES_PEIXES.length, activePage4)),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(hintText: "BEBIDAS"),
                  style:
                      TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
                )),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PratoPage(
                          pratoEscolhido: 'Bebidas'), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: DUMMY_IMAGES_BEBIDAS.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage4 = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage5;
                      return slider(DUMMY_IMAGES_BEBIDAS, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(DUMMY_IMAGES_BEBIDAS.length, activePage5)),
          ],
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
      margin: const EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}
