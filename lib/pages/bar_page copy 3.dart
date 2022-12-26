import 'package:flutter/material.dart';
import 'package:suncoast/models/bar.dart';

class BarPage extends StatelessWidget {
  const BarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bar = ModalRoute.of(context)?.settings.arguments as Bar;

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '${bar.nome} -- Categorias',
            style: const TextStyle(fontSize: 16),
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
    "assets/images/pratos/pratos_regionais/baiaodedois2.jpg",
    "/assets/images/pratos/pratos_regionais/baiaodedois2.jpg",
    "/assets/images/pratos/pratos_regionais/baiaodedois2.jpg",
  ];

  List<String> images2 = [
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
  ];
  List<String> images3 = [
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
  ];
  List<String> images4 = [
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
  ];

  int activePage = 1;
  int activePage2 = 1;
  int activePage3 = 1;
  int activePage4 = 1;

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
            SizedBox(
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
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images.length, activePage)),
            const TextField(
              decoration: InputDecoration(hintText: "PRATOS EXECUTIVOS"),
              style: TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
            ),
            SizedBox(
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
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images2.length, activePage2)),
            const TextField(
              decoration: InputDecoration(hintText: "PORÇÕES"),
              style: TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
            ),
            SizedBox(
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
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images3.length, activePage3)),
            const TextField(
              decoration: InputDecoration(hintText: "BEBIDAS"),
              style: TextStyle(fontSize: 25.0, height: 2.0, color: Colors.red),
            ),
            SizedBox(
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
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images4.length, activePage4)),
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
        image: DecorationImage(image: NetworkImage(images[pagePosition]))),
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
      child: Image.network(images[pagePosition]),
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
