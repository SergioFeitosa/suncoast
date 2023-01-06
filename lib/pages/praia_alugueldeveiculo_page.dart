// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:suncoast/models/alugueldeveiculos.dart';
import 'package:suncoast/models/praia.dart';
import 'package:suncoast/utils/app_routes.dart';
import '../data/dummy_data.dart';

class PraiaAlugueldeVeiculoPage extends StatelessWidget {
  const PraiaAlugueldeVeiculoPage({super.key});

  void _selectBar(BuildContext context, AlugueldeVeiculos alugueldeVeiculos) {
    Navigator.of(context).pushNamed(
      AppRoutes.ALUGUELDEVEICULO,
      arguments: alugueldeVeiculos,
    );
  }

  @override
  Widget build(BuildContext context) {
    final praia = ModalRoute.of(context)?.settings.arguments as Praia;

    final tabela = DUMMY_ALUGUELDEVEICULOS
        .where((alugueldeVeiculos) =>
            praia.alugueldeveiculos.contains(alugueldeVeiculos.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${praia.nome} -- Aluguel de Veiculos',
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
              itemBuilder: (BuildContext context, int alugueldeVeiculos) {
                return ListTile(
                  onTap: () => _selectBar(context, tabela[alugueldeVeiculos]),
                  leading: Image.asset(
                    tabela[alugueldeVeiculos].imagem,
                    width: 50,
                  ),
                  title: Text('  ${tabela[alugueldeVeiculos].nome}'),
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
