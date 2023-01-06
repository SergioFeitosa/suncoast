// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PedidoPrato {
  final String id;
  final String local;
  final String horaPedido;
  final String horaEntrega;
  final String telefone;
  final String title;
  final Color color;
  final String imagem;
  final String item;
  final String descricao;
  final double preco;
  final String observacao;
  final String tempoPreparo;
  final List ingredientes;
  final String modoPreparo;

  const PedidoPrato({
    required this.id,
    required this.local,
    required this.horaPedido,
    required this.horaEntrega,
    required this.telefone,
    required this.title,
    this.color = Colors.orange,
    required this.imagem,
    required this.item,
    required this.descricao,
    required this.preco,
    required this.observacao,
    required this.tempoPreparo,
    required this.ingredientes,
    required this.modoPreparo,
  });
}
