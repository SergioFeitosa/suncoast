import 'package:flutter/material.dart';

class Estabelecimento {
  final String id;
  final String title;
  final Color color;

  const Estabelecimento({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
