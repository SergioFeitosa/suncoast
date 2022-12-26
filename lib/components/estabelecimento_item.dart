import 'package:flutter/material.dart';
import '../models/estabelecimento.dart';
import '../utils/app_routes.dart';

class EstabelecimentoItem extends StatelessWidget {
  final Estabelecimento estabelecimento;

  const EstabelecimentoItem(this.estabelecimento, {Key? key}) : super(key: key);

  void _selectEstabelecimento(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.BAR,
      arguments: estabelecimento,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectEstabelecimento(context),
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              estabelecimento.color.withOpacity(0.5),
              estabelecimento.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          estabelecimento.title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
