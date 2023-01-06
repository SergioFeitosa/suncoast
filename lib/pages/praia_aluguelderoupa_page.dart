// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:suncoast/models/aluguelderoupas.dart';
import 'package:suncoast/models/praia.dart';
import 'package:suncoast/utils/app_routes.dart';
import '../data/dummy_data.dart';

class PraiaAlugueldeRoupaPage extends StatelessWidget {
  const PraiaAlugueldeRoupaPage({super.key});

  void _selectAlugueldeRoupas(BuildContext context, AlugueldeRoupas alugueldeRoupas) {
    Navigator.of(context).pushNamed(
      AppRoutes.ALUGUELDEROUPA,
      arguments: alugueldeRoupas,
    );
  }

  @override
  Widget build(BuildContext context) {
    final praia = ModalRoute.of(context)?.settings.arguments as Praia;

    final tabela = DUMMY_ALUGUELDEROUPAS
        .where((alugueldeRoupas) =>
            praia.aluguelderoupas.contains(alugueldeRoupas.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${praia.nome} -- Aluguel de Roupas',
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.amber,
            child: const ListTile(
              leading: Text(
                'Imagem',
                style: TextStyle(fontSize: 16),
              ),
              title: Text(
                'Nome',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int alugueldeRoupas) {
                return ListTile(
                  onTap: () => _selectAlugueldeRoupas(context, tabela[alugueldeRoupas]),
                  leading: Image.asset(
                    tabela[alugueldeRoupas].imagem,
                    width: 50,
                  ),
                  title: Text('  ${tabela[alugueldeRoupas].nome}'),
                );
              },
              padding: const EdgeInsets.all(16),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: tabela.length,
            ),
          ),
        ],
      ),
    );
  }
}
