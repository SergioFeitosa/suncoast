import 'package:flutter/material.dart';
import 'package:suncoast/models/bar.dart';
import 'package:suncoast/models/praia.dart';
import 'package:suncoast/utils/app_routes.dart';
import '../data/dummy_data.dart';

class PraiaBarPage extends StatelessWidget {
  const PraiaBarPage({super.key});

  void _selectBar(BuildContext context, Bar bar) {
    Navigator.of(context).pushNamed(
      AppRoutes.BAR,
      arguments: bar,
    );
  }

  @override
  Widget build(BuildContext context) {
    final praia = ModalRoute.of(context)?.settings.arguments as Praia;

    final tabela = DUMMY_BAR
        .where((bar) => praia.aluguelderoupas.contains(bar.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${praia.nome} -- Bares',
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
              trailing: Text(
                'Temperatura',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int bar) {
                return ListTile(
                  onTap: () => _selectBar(context, tabela[bar]),
                  leading: Image.asset(
                    tabela[bar].imagem,
                    width: 50,
                  ),
                  title: Text('  ${tabela[bar].nome}'),
                  trailing: Text(tabela[bar].id),
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
