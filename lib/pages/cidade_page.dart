import 'package:flutter/material.dart';
import 'package:suncoast/models/cidade.dart';
import 'package:suncoast/models/estado.dart';
import 'package:suncoast/utils/app_routes.dart';
import '../data/dummy_data.dart';

class CidadePage extends StatelessWidget {
  
  const CidadePage({super.key});

  void _selectPraia(BuildContext context, Cidade cidade) {
    Navigator.of(context).pushNamed(
      AppRoutes.PRAIA,
      arguments: cidade,
    );
  }

  @override
  Widget build(BuildContext context) {
    final estado = ModalRoute.of(context)?.settings.arguments as Estado;
    List tabela = DUMMY_CIDADES
        .where((cidade) => estado.cidades.contains(cidade.id))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${estado.nome} -- Cidades',
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
              itemBuilder: (BuildContext context, int cidade) {
                return ListTile(
                  onTap: () => _selectPraia(context, tabela[cidade]),
                  leading: Image.asset(
                    tabela[cidade].imagem,
                    width: 50,
                  ),
                  title: Text(' ${tabela[cidade].nome}'),
                  trailing: Text(' ${tabela[cidade].nome}'),
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
