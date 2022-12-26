import 'package:flutter/material.dart';
import 'package:suncoast/models/bar.dart';

import '../components/categoria_item.dart';
import '../data/dummy_data.dart';

class CategoriaPage extends StatelessWidget {
  const CategoriaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bar = ModalRoute.of(context)?.settings.arguments as Bar;

    return Scaffold(
      appBar: AppBar(
        title: Text('${bar.nome} -- Cardápio'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIAS.map((cat) {
          return CategoriaItem(categoria: cat);
        }).toList(),
      ),
    );
  }
}
