import 'package:flutter/material.dart';
import 'package:suncoast/models/praia.dart';
import 'package:suncoast/utils/app_routes.dart';
import '../data/dummy_data.dart';

class TipoEstabelecimentoPage extends StatelessWidget {
  const TipoEstabelecimentoPage({super.key});

  void _selectPageAlugueldeRoupa(BuildContext context, Praia praia) {
    Navigator.of(context).pushNamed(
      AppRoutes.PRAIAALUGUELDEROUPA,
      arguments: praia,
    );
  }

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
          '${praia.nome} -- Tipos de Estabelecimento',
          style: const TextStyle(fontSize: 14),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.amber,
            child: const ListTile(
              title: Text(
                'Nome',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'Qtd',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int estabelecimento) {
                return ListTile(
                    onTap: () => {
                          if (tabela[estabelecimento].id == '1') ...[
                            _selectPageAlugueldeRoupa(context, praia),
                          ] else if (tabela[estabelecimento].id == '2') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '3') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '4') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '5') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '6') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '7') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '8') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '9') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '10') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '11') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '12') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '13') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '14') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '15') ...[
                            _selectPageBar(context, praia),
                          ] else if (tabela[estabelecimento].id == '16') ...[
                            _selectPageBar(context, praia),
                          ]
                        },
                    //leading: Image.asset(
                    //  tabela[estabelecimento].title,
                    //  width: 50,
                    //),
                    title: Text(
                      '  ${tabela[estabelecimento].title}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 2,
                        fontSize: 13,
                      ),
                    ),
                    trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
              padding: const EdgeInsets.all(2),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: tabela.length,
            ),
          ),
        ],
      ),
    );
  }
}
