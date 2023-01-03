import 'package:flutter/material.dart';
import 'package:suncoast/models/praia.dart';
import 'package:suncoast/utils/app_routes.dart';
import '../data/dummy_data.dart';

class TipoEstabelecimentoPage extends StatelessWidget {
  const TipoEstabelecimentoPage({super.key});

  void _selectPageBar(BuildContext context, Praia praia) {
    Navigator.of(context).pushNamed(
      AppRoutes.PRAIABAR,
      arguments: praia,
    );
  }

  @override
  Widget build(BuildContext context) {
    final praia = ModalRoute.of(context)?.settings.arguments as Praia;

    final tabela = DUMMY_TIPO_ESTABELECIMENTO
        .where((tipoestabelecimento) =>
            praia.tipoEstabelecimentos.contains(tipoestabelecimento.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${praia.nome} -- Tipo de Estabelecimentos',
          style: const TextStyle(fontSize: 10),
        ),
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
                    onTap: () => _selectPageBar(context, praia),
                    //leading: Image.asset(
                    //  tabela[estabelecimento].title,
                    //  width: 50,
                    //),
                    title: Text('  ${tabela[estabelecimento].title}'),
                    trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (tabela[estabelecimento].id == '1') ...[
                            Text('  ${praia.aluguelderoupas.length}'),
                          ] else if (tabela[estabelecimento].id == '2') ...[
                            Text('  ${praia.alugueldeveiculos.length}'),
                          ] else if (tabela[estabelecimento].id == '3') ...[
                            Text('  ${praia.artesanato.length}'),
                          ] else if (tabela[estabelecimento].id == '4') ...[
                            Text('  ${praia.bar.length}'),
                          ] else if (tabela[estabelecimento].id == '5') ...[
                            Text('  ${praia.farmacia.length}'),
                          ] else if (tabela[estabelecimento].id == '6') ...[
                            Text('  ${praia.feirinha.length}'),
                          ] else if (tabela[estabelecimento].id == '7') ...[
                            Text('  ${praia.hamburgueria.length}'),
                          ] else if (tabela[estabelecimento].id == '8') ...[
                            Text('  ${praia.lojaderoupas.length}'),
                          ] else if (tabela[estabelecimento].id == '9') ...[
                            Text('  ${praia.materialdeconstrucao.length}'),
                          ] else if (tabela[estabelecimento].id == '10') ...[
                            Text('  ${praia.padaria.length}'),
                          ] else if (tabela[estabelecimento].id == '11') ...[
                            Text('  ${praia.pizzaria.length}'),
                          ] else if (tabela[estabelecimento].id == '12') ...[
                            Text('  ${praia.quiosque.length}'),
                          ] else if (tabela[estabelecimento].id == '13') ...[
                            Text('  ${praia.restaurante.length}'),
                          ] else if (tabela[estabelecimento].id == '14') ...[
                            Text('  ${praia.salaodebeleza.length}'),
                          ] else if (tabela[estabelecimento].id == '15') ...[
                            Text('  ${praia.shopping.length}'),
                          ] else if (tabela[estabelecimento].id == '16') ...[
                            Text('  ${praia.supermercado.length}'),
                          ]
                        ]));
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
