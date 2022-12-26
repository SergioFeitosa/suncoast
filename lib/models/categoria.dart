import 'package:flutter/material.dart';

class Categoria {
  final String id;
  final String title;
  final Color color;

  const Categoria({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
