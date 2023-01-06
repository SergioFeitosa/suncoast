// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pay/pay.dart';
import 'package:suncoast/models/pedidoroupa.dart';
import '../data/dummy_data.dart';
import 'package:intl/intl.dart';

class PedidoRoupaPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final telefone;

  const PedidoRoupaPage({super.key, this.telefone});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay for Flutter Demo',
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      // ignore: prefer_const_literals_to_create_immutables
      supportedLocales: [
        const Locale('en', ''),
        const Locale('es', ''),
        const Locale('de', ''),
      ],
      home: PaySampleApp(),
    );
  }
}

class PaySampleApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  PaySampleApp({Key? key}) : super(key: key);

  @override
  _PaySampleAppState createState() => _PaySampleAppState();
}

class _PaySampleAppState extends State<PaySampleApp> {
  void onGooglePayResult(paymentResult) {
    debugPrint(paymentResult.toString());
  }

  void onApplePayResult(paymentResult) {
    debugPrint(paymentResult.toString());
  }

  double total = 0.0;

  List<PedidoRoupa> tabelaPedidoRoupa = [];

  Future<List> getTabelaPedidoRoupa() async {
    total = 0;

    tabelaPedidoRoupa = DUMMY_PEDIDOROUPA
        .where((pedidoroupa) => (pedidoroupa.telefone.contains('11982551256')))
        .toList();
    return tabelaPedidoRoupa;
  }

  final List<PaymentItem> _paymentItems = [];

  Future<List> _getPaymentItem() async {
    _paymentItems.add(
      PaymentItem(
        label: 'Total',
        amount: total.toString(),
        status: PaymentItemStatus.final_price,
      ),
    );
    // ignore: avoid_print
    print('$total.toString()');
    return _paymentItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pedido de Roupas',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: FutureBuilder(
        future: getTabelaPedidoRoupa(),
        builder: (context, snapshot) {
          return Column(
            children: [
              const ListTile(
                leading: Text(
                  'Qtde        ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                title: Text(
                  'Item / Local',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Text(
                  'Preço        ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  // ignore: unnecessary_null_comparison
                  itemCount: tabelaPedidoRoupa.length,
                  itemBuilder: (BuildContext context, int pedidoroupaidx) {
                    final tabelaRoupa = DUMMY_ROUPA
                        .where((roupa) => (tabelaPedidoRoupa[pedidoroupaidx]
                            .itens
                            .contains(roupa.id)))
                        .toList();

                    List<Widget> widgtes = [];
                    for (int index = 0;
                        index < tabelaPedidoRoupa[pedidoroupaidx].itens.length;
                        index++) {
                      ///
                      total += tabelaRoupa[index].preco *
                          double.parse(
                              tabelaPedidoRoupa[pedidoroupaidx].quantidade);

                      ///just to print out
                      widgtes.add(ListTile(
                        onTap: () => {},
                        leading: Text(
                          '  ${tabelaPedidoRoupa[pedidoroupaidx].quantidade}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        title: Text(
                          '  ${tabelaRoupa[index].title}',
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                          '  ${tabelaPedidoRoupa[pedidoroupaidx].local}',
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        trailing: Text(
                          (tabelaRoupa[index].preco *
                                  double.parse(tabelaPedidoRoupa[pedidoroupaidx]
                                      .quantidade))
                              .toStringAsFixed(2),
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
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
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                height: 50,
                color: Colors.amber[600],
                child: Center(
                    child: Text(
                  "Total: '${NumberFormat.currency(locale: 'pt-BR').format(total)}",
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                )),
              ),
              FutureBuilder(
                future: _getPaymentItem(),
                builder: (context, snapshot) {
                  return Container(
                    margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    height: 50,
                    child: ListView(
                      children: <Widget>[
                        GooglePayButton(
                          paymentConfigurationAsset:
                              'default_payment_profile_google_pay.json',
                          paymentItems: _paymentItems,
                          type: GooglePayButtonType.buy,
                          onPaymentResult: onGooglePayResult,
                          loadingIndicator: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        ApplePayButton(
                          paymentConfigurationAsset:
                              'default_payment_profile_apple_pay.json',
                          paymentItems: _paymentItems,
                          style: ApplePayButtonStyle.black,
                          type: ApplePayButtonType.buy,
                          onPaymentResult: onApplePayResult,
                          loadingIndicator: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
