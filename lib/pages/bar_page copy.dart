import 'package:flutter/material.dart';
import 'package:suncoast/models/bar.dart';

import '../components/categoria_item.dart';
import '../data/dummy_data.dart';

class BarPage extends StatelessWidget {
  const BarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bar = ModalRoute.of(context)?.settings.arguments as Bar;

    final tabela = DUMMY_CATEGORIA
        .where((categoria) => bar.categorias.contains(categoria.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${bar.nome} -- Categorias',
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: tabela.map((cat) {
          return CategoriaItem(categoria: cat);
        }).toList(),
      ),
    );
  }
}
