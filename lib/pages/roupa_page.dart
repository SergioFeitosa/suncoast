// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:suncoast/data/dummy_data.dart';
import 'package:suncoast/models/aluguelderoupas.dart';
import 'package:suncoast/models/roupa.dart';
import 'package:suncoast/pages/pedido_roupa_page.dart';

// ignore: must_be_immutable
class RoupaPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final aluguelderoupas;
  // ignore: prefer_typing_uninitialized_variables
  final String routeName;

  const RoupaPage({super.key, this.aluguelderoupas, required this.routeName});

  @override
  Widget build(BuildContext context) {
    String localPedido = 'mesa01';
    String telefone = '11982551256';
    double quantidade = 0;

    List<Roupa> tabela = DUMMY_ROUPA
        // ignore: unrelated_type_equality_checks
        .where((roupa) => (roupa.id.contains((routeName).toString())))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${aluguelderoupas.nome} == ${tabela[0].title}',
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
                        aluguelderoupas: aluguelderoupas,
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
                        builder: (context) => PedidoRoupaPage(
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
                'Telefone',
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
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Text(
                telefone.toString(),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

gravarPedido({
  required String id,
  required AlugueldeRoupas aluguelderoupas,
  required String local,
  required String item,
  required double quantidade,
  required String observacao,
  required String horaPedido,
  required String telefone,
}) {
  print(id);
  print(aluguelderoupas.nome);
  print(local);
  print(quantidade);
  print(item);
  print(observacao);
  print(horaPedido);
  print(telefone);
}
