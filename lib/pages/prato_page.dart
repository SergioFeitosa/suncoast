// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:suncoast/data/dummy_data.dart';
import 'package:suncoast/models/bar.dart';
import 'package:suncoast/models/prato.dart';
import 'package:suncoast/pages/pedido_page.dart';

// ignore: must_be_immutable
class PratoPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final bar;
  // ignore: prefer_typing_uninitialized_variables
  final routeName;

  const PratoPage({super.key, this.bar, this.routeName});

  @override
  Widget build(BuildContext context) {
    String localPedido = 'mesa01';
    String telefone = '11982551256';
    double quantidade = 0;

    List<Prato> tabela = DUMMY_PRATO
        // ignore: unrelated_type_equality_checks
        .where((prato) => (prato.id.contains((routeName).toString())))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${bar.nome} == ${tabela[0].title}',
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InputQty(
                    maxVal: 10,
                    initVal: 0.0,
                    steps: 1,
                    minVal: 0,
                    onQtyChanged: (val) {
                      quantidade = val as double;
                    },
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    onPressed: () async {
                      await gravarPedido(
                        id: '6',
                        bar: bar,
                        quantidade: quantidade,
                        item: tabela[0].id,
                        local: localPedido,
                        horaPedido: '12:00',
                        telefone: '11982551256',
                        observacao: '',
                      );
                    },
                    child: const Text('Adicionar Item'),
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    onPressed: () async {
                      await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PedidoPage(
                          telefone: telefone, // The page you want
                        ),
                      ));
                    },
                    child: const Text('Ver Pedido'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                tabela[0].imagem,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              tabela[0].title,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                'Descrição',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Text(
                tabela[0].descricao,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                'Preço',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Text(
                tabela[0].preco.toString(),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                'Tempo de Preparo',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Text(
                tabela[0].tempoPreparo,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                'Ingredientes',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Text(
                tabela[0].ingredientes[0],
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                'Modo de Preparo',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Text(
                tabela[0].modoPreparo,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                'Modo de Preparo',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: const Text(
                'telefone',
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ),
    );
  }
}

gravarPedido({
  required String id,
  required Bar bar,
  required String local,
  required String item,
  required double quantidade,
  required String observacao,
  required String horaPedido,
  required String telefone,
}) {
  print(id);
  print(bar.nome);
  print(local);
  print(quantidade);
  print(item);
  print(observacao);
  print(horaPedido);
  print(telefone);
}
