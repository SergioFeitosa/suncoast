import 'package:flutter/material.dart';

class TipoEstabelecimento {
  final String id;
  final String title;
  final Color color;

  const TipoEstabelecimento({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
