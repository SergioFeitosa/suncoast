import 'package:flutter/material.dart';
import 'package:suncoast/models/categoria.dart';

class CategoriaItem extends StatelessWidget {
  final Categoria categoria;

  const CategoriaItem({super.key, required this.categoria});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              categoria.color.withOpacity(0.5),
              categoria.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
      child: Text(categoria.title),
    );
  }
}
