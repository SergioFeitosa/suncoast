import 'package:flutter/material.dart';
import 'package:suncoast/models/praia.dart';
import 'package:suncoast/models/tipo_estabelecimento.dart';
import 'package:suncoast/utils/app_routes.dart';
import '../data/dummy_data.dart';

class EstabelecimentoPage extends StatelessWidget {
  const EstabelecimentoPage({super.key});

  void _selectEstabelecimento(BuildContext context, Praia praia) {
    Navigator.of(context).pushNamed(
      AppRoutes.ESTABELECIMENTO,
      arguments: praia,
    );
  }

  @override
  Widget build(BuildContext context) {
    final praia = ModalRoute.of(context)?.settings.arguments as Praia;
    // ignore: unused_local_variable
    final tipoEstabelecimento =
        ModalRoute.of(context)?.settings.arguments as TipoEstabelecimento;

    final tabela = DUMMY_TIPO_ESTABELECIMENTOS
        .where((estabelecimento) =>
            praia.tipoEstabelecimentos.contains(estabelecimento.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('${praia.nome} -- Tipo de Estabelecimentos'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.amber,
            child: const ListTile(
              //leading: Text(
              //  'Imagem',
              //  style: TextStyle(fontSize: 16),
              //),
              title: Text(
                'Nome',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Text(
                'Id',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int estabelecimento) {
                return ListTile(
                  onTap: () => _selectEstabelecimento(context, praia),
                  //leading: Image.asset(
                  //  tabela[estabelecimento].title,
                  //  width: 50,
                  //),
                  title: Text('  ${tabela[estabelecimento].title}'),
                  trailing: Text(tabela[estabelecimento].id),
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
