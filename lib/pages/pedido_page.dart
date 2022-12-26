import 'package:flutter/material.dart';
import 'package:suncoast/pages/credit_card_page.dart';
import '../data/dummy_data.dart';

class PedidoPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final telefone;

  const PedidoPage({super.key, this.telefone});

  @override
  Widget build(BuildContext context) {
    final tabelaPedido = DUMMY_PEDIDOS
        .where((pedido) => (pedido.telefone.contains(telefone)))
        .toList();

    double total = 0.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pedidos',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          const ListTile(
            leading: Text(
              'Item',
              style: TextStyle(fontSize: 16),
            ),
            title: Text(
              'Local',
              style: TextStyle(fontSize: 16),
            ),
            trailing: Text(
              'Preço',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.separated(
              // ignore: unnecessary_null_comparison
              itemCount: tabelaPedido == null ? 0 : tabelaPedido.length,
              itemBuilder: (BuildContext context, int pedidoidx) {
                final tabelaPrato = DUMMY_PRATOS
                    .where((prato) =>
                        (tabelaPedido[pedidoidx].itens.contains(prato.id)))
                    .toList();

                List<Widget> widgtes = [];

                for (int index = 0;
                    index < tabelaPedido[pedidoidx].itens.length;
                    index++) {
                  ///
                  total += tabelaPrato[index].preco;

                  ///just to print out
                  widgtes.add(ListTile(
                    onTap: () => {},
                    leading: Text('  ${tabelaPrato[index].title}'),
                    title: Text('  ${tabelaPedido[pedidoidx].local}'),
                    trailing: Text('  $total'),
                  ));
                }
                return Column(
                  children: widgtes,
                );
              },
              padding: const EdgeInsets.all(16),
              separatorBuilder: (_, __) => const Divider(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _settingModalBottomSheet(context, total);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _settingModalBottomSheet(context, double total) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Wrap(
            children: <Widget>[
              ListTile(
                onTap: () async {
                      await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CreditCardPage(
                          total: total, // The page you want
                        ),
                      ));
                    },
                leading: Text(
                  'Valor Total $total',
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          );
        });
  }

}
