import 'package:flutter/material.dart';
import 'package:suncoast/data/dummy_data.dart';
import 'package:suncoast/models/aluguelderoupas.dart';
import 'package:suncoast/pages/roupa_page.dart';

class AlugueldeRoupaPage extends StatelessWidget {
  const AlugueldeRoupaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final aluguelderoupa =
        ModalRoute.of(context)?.settings.arguments as AlugueldeRoupas?;

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
        body: Carousel(aluguelderoupa: aluguelderoupa),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  final AlugueldeRoupas? aluguelderoupa;

  const Carousel({
    Key? key,
    this.aluguelderoupa,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late AlugueldeRoupas aluguelderoupa;

  late PageController _pageController;

  late int roupaEscolhida;

  late String routeName;

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
    //final aluguelderoupa = ModalRoute.of(context)?.settings.arguments as AlugueldeRoupa?;

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(hintText: "SOCIAL"),
                style: TextStyle(fontSize: 25.0, height: 2.0),
              ),
            ),
            GestureDetector(
                onTap: () async {
                  routeName = "1";
                  DUMMY_IMAGES_ROUPAS_SOCIAL
                      .map((element) => element['image'])
                      .toString();

                  //DUMMY_IMAGES_ROUPAS_SOCIAL.map((element) {
                  // ignore: unrelated_type_equality_checks
                  //  return (element["routName"]);
                  //}) as String;

                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RoupaPage(
                          aluguelderoupas: widget.aluguelderoupa,
                          routeName: routeName), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: DUMMY_IMAGES_ROUPAS_SOCIAL.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage;
                      return slider(
                          DUMMY_IMAGES_ROUPAS_SOCIAL
                              .map((element) => element['image'])
                              .toList(),
                          pagePosition,
                          active);
                    },
                  ),
                )),

            // ======================================================
            // Rigor
            // ======================================================

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    indicators(DUMMY_IMAGES_ROUPAS_SOCIAL.length, activePage)),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(hintText: "RIGOR"),
                  style:
                      TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
                )),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RoupaPage(
                          aluguelderoupas: widget.aluguelderoupa,
                          routeName: routeName), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: DUMMY_IMAGES_ROUPAS_RIGOR.length,
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
                          DUMMY_IMAGES_ROUPAS_RIGOR, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    indicators(DUMMY_IMAGES_ROUPAS_RIGOR.length, activePage2)),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(hintText: "ESPORTE"),
                  style:
                      TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
                )),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RoupaPage(
                          aluguelderoupas: widget.aluguelderoupa,
                          routeName: routeName), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: DUMMY_IMAGES_ROUPAS_ESPORTE.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage3 = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage3;
                      return slider(
                          DUMMY_IMAGES_ROUPAS_ESPORTE, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(
                    DUMMY_IMAGES_ROUPAS_ESPORTE.length, activePage3)),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(hintText: "INFANTIL"),
                  style:
                      TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
                )),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RoupaPage(
                          aluguelderoupas: widget.aluguelderoupa,
                          routeName: routeName), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: DUMMY_IMAGES_ROUPAS_INFANTIL.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage4 = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage4;
                      return slider(
                          DUMMY_IMAGES_ROUPAS_INFANTIL, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(
                    DUMMY_IMAGES_ROUPAS_INFANTIL.length, activePage4)),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(hintText: "PRAIA"),
                  style:
                      TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
                )),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RoupaPage(
                          aluguelderoupas: widget.aluguelderoupa,
                          routeName: routeName), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: DUMMY_IMAGES_ROUPAS_PRAIA.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage4 = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage5;
                      return slider(
                          DUMMY_IMAGES_ROUPAS_PRAIA, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    indicators(DUMMY_IMAGES_ROUPAS_PRAIA.length, activePage5)),
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
