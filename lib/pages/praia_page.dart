import 'package:flutter/material.dart';
import 'package:suncoast/models/cidade.dart';
import 'package:suncoast/models/praia.dart';
import 'package:suncoast/utils/app_routes.dart';
import '../data/dummy_data.dart';

class PraiaPage extends StatelessWidget {
  const PraiaPage({super.key});

  void _selectTipoEstabelecimento(BuildContext context, Praia praia) {
    Navigator.of(context).pushNamed(
      AppRoutes.TIPOESTABELECIMENTO,
      arguments: praia,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cidade = ModalRoute.of(context)?.settings.arguments as Cidade;

    final tabela = DUMMY_PRAIAS
        .where((praia) => cidade.praias.contains(praia.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${cidade.nome} -- Praias',
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
              itemBuilder: (BuildContext context, int praia) {
                return ListTile(
                  onTap: () =>
                      _selectTipoEstabelecimento(context, tabela[praia]),
                  leading: Image.asset(
                    tabela[praia].imagem,
                    width: 50,
                  ),
                  title: Text('  ${tabela[praia].nome}'),
                  trailing: Text(tabela[praia].temperatura.toString()),
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
