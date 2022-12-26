import 'package:flutter/material.dart';
import 'package:suncoast/pages/prato_page.dart';

class BarPage extends StatelessWidget {
  const BarPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: const Carousel(),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;

  List<String> images = [
    'assets/images/pratos/pratos_regionais/baiao-dois-1.jpg',
    'assets/images/pratos/pratos_regionais/carnedesol-commacaxeira.jpg',
    'assets/images/pratos/pratos_regionais/carnedesol-comnata.jpg',
    'assets/images/pratos/pratos_regionais/carnedesol-comqueijocoalho.jpg',
    'assets/images/pratos/pratos_regionais/rubacao.jpg',
    'assets/images/pratos/pratos_regionais/carnedesol-commacaxeira.jpg',
    'assets/images/pratos/pratos_regionais/carnedesol-comnata.jpg',
    'assets/images/pratos/pratos_regionais/carnedesol-comqueijocoalho.jpg',
    'assets/images/pratos/pratos_regionais/rubacao.jpg',
  ];

  List<String> images2 = [
    "assets/images/pratos/pratos_executivos/berinjela-recheada.jpg",
    "assets/images/pratos/pratos_executivos/espaguete-abolonhesa.jpg",
    "assets/images/pratos/pratos_executivos/pratoespecial.jpg",
    "assets/images/pratos/pratos_executivos/pratododia.jpg",
    "assets/images/pratos/pratos_executivos/pratododia-small.jpg",
    "assets/images/pratos/pratos_executivos/pratoespecial.jpg",
    "assets/images/pratos/pratos_executivos/berinjela-recheada.jpg",
  ];
  List<String> images3 = [
    "assets/images/pratos/porcoes/porcoes.jpg",
    "assets/images/pratos/porcoes/porcoesespeciais.jpg",
    "assets/images/pratos/porcoes/porcoes.jpg",
    "assets/images/pratos/porcoes/porcoesespeciais.jpg",
    "assets/images/pratos/porcoes/porcoes.jpg",
  ];
  List<String> images4 = [
    "assets/images/pratos/peixes/cioba-frito.jpg",
    "assets/images/pratos/peixes/pescadaamarela.jpg",
    "assets/images/pratos/peixes/tilapia-aomolhodealcaparras.jpg",
    "assets/images/pratos/peixes/tilapia-aomolhodecamarao.jpg",
    "assets/images/pratos/peixes/tilapia-filecomlegumes.jpg",
    "assets/images/pratos/peixes/tilapia-fileempanado.jpg",
    "assets/images/pratos/peixes/pescadaamarela.jpg",
    "assets/images/pratos/peixes/tilapia-aomolhodecamarao.jpg",
  ];
  List<String> images5 = [
    "assets/images/bebidas/refrigerantes/cocacola-lata350ml.jpg",
    "assets/images/bebidas/cervejas/cerveja.jpg",
  ];

  int activePage = 1;
  int activePage2 = 1;
  int activePage3 = 1;
  int activePage4 = 1;
  int activePage5 = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(hintText: "PRATOS REGIONAIS"),
              style: TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
            ),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PratoPage(
                          pratoEscolhido:
                              'PRATOS Executivos'), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: images.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage;
                      return slider(images, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images.length, activePage)),
            const TextField(
              decoration: InputDecoration(hintText: "PRATOS EXECUTIVOS"),
              style: TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
            ),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PratoPage(
                          pratoEscolhido:
                              'PRATOS Executivos'), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: images2.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage2 = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage2;
                      return slider(images2, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images2.length, activePage2)),
            const TextField(
              decoration: InputDecoration(hintText: "PORÇÕES"),
              style: TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
            ),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PratoPage(
                          pratoEscolhido: 'Porções'), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: images3.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage3 = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage3;
                      return slider(images3, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images3.length, activePage3)),
            const TextField(
              decoration: InputDecoration(hintText: "PEIXES"),
              style: TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
            ),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PratoPage(
                          pratoEscolhido: 'Peixes'), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: images4.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage4 = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage4;
                      return slider(images4, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images4.length, activePage4)),
            const TextField(
              decoration: InputDecoration(hintText: "BEBIDAS"),
              style: TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
            ),
            GestureDetector(
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PratoPage(
                          pratoEscolhido: 'Bebidas'), // The page you want
                    ),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: PageView.builder(
                    itemCount: images5.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage4 = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage5;
                      return slider(images5, pagePosition, active);
                    },
                  ),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images5.length, activePage5)),
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
