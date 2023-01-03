import 'package:flutter/material.dart';
import 'package:suncoast/models/praia.dart';

import '../components/categoria_item.dart';
import '../data/dummy_data.dart';

class RestaurantePage extends StatelessWidget {
  const RestaurantePage({super.key});

  @override
  Widget build(BuildContext context) {
    final praia = ModalRoute.of(context)?.settings.arguments as Praia;

    return Scaffold(
      appBar: AppBar(
        title: Text('${praia.nome} -- Bares'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIA.map((cat) {
          return CategoriaItem(categoria: cat);
        }).toList(),
      ),
    );
  }
}
