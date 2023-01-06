import 'package:flutter/material.dart';

class Categoria {
  final String id;
  final String title;
  final Color color;
  final String tipo;

  const Categoria({
    required this.id,
    required this.title,
    this.color = Colors.orange,
    required this.tipo,
  });
}

/*
Tipos de Categorias
    1  - Roupas
    2  - Veiculos
    3  - Artesanato
    4  - Bebida
    5  - Farmacia
    6  - Feirinha
    7  - Hamburguer
    8  - Material de Construção
    9  - Padaria
    10 - Pizzaria
    11 - Prato  
    12 - Salao de Beleza
    13 - Shopping
    14 - Super Mercado 
*/
