import 'package:flutter/material.dart';
import 'package:suncoast/components/estado_item.dart';
import 'package:suncoast/models/estado.dart';
import '../data/dummy_data.dart';
import 'package:suncoast/utils/app_routes.dart';

class EstadoPage extends StatelessWidget {
  const EstadoPage({
    super.key,
  });

  //final Estado estado;

  void _selectCidade(BuildContext context, Estado estado) {
    Navigator.of(context).pushNamed(
      AppRoutes.CIDADE,
      arguments: estado,
    );
  }

  @override
  Widget build(BuildContext context) {
    final tabela = DUMMY_ESTADOS.map((est) {
      return EstadoItem(estado: est);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Estados',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.amber,
            child: const ListTile(
              leading: Text(
                'Bandeira',
                style: TextStyle(fontSize: 16),
              ),
              title: Text(
                'Sigla   Nome',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Text(
                'População',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int estado) {
                return ListTile(
                  onTap: () => _selectCidade(context, tabela[estado].estado),
                  leading: Image.asset(
                    tabela[estado].estado.bandeira,
                    width: 50,
                  ),
                  title: Text(
                      '  ${tabela[estado].estado.sigla}    ${tabela[estado].estado.nome}'),
                  trailing: Text(tabela[estado].estado.populacao.toString()),
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
