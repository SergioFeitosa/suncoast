import 'package:flutter/material.dart';

class Prato {
  final String id;
  final String title;
  final Color color;
  final String imagem;
  final String descricao;
  final double preco;
  final String observacao;
  final String tempoPreparo;
  final List ingredientes;
  final String modoPreparo;

  const Prato({
    required this.id,
    required this.title,
    this.color = Colors.orange,
    required this.imagem,
    required this.descricao,
    required this.preco,
    required this.observacao,
    required this.tempoPreparo,
    required this.ingredientes,
    required this.modoPreparo,
  });

  static contains(bool bool) {}
}
