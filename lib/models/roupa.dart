import 'package:flutter/material.dart';

class Roupa {
  final String id;
  final String title;
  final Color color;
  final String imagem;
  final String descricao;
  final double preco;
  final String observacao;

  const Roupa({
    required this.id,
    required this.title,
    this.color = Colors.orange,
    required this.imagem,
    required this.descricao,
    required this.preco,
    required this.observacao,
  });

  static contains(bool bool) {}
}
