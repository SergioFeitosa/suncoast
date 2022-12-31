import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pay/pay.dart';
import 'package:suncoast/models/pedido.dart';
import '../data/dummy_data.dart';

class PedidoPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final telefone;

  const PedidoPage({super.key, this.telefone});

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

  List<Pedido> tabelaPedido = [];

  Future<List> getTabelaPedido() async {
    tabelaPedido = DUMMY_PEDIDOS
        .where((pedido) => (pedido.telefone.contains('11982551256')))
        .toList();
    return tabelaPedido;
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
          'Pedidos',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: FutureBuilder(
        future: getTabelaPedido(),
        builder: (context, snapshot) {
          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                  // ignore: unnecessary_null_comparison
                  itemCount: tabelaPedido.length,
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
                        leading: Text(
                          '  ${tabelaPrato[index].title}',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        title: Text(
                          '  ${tabelaPedido[pedidoidx].local}',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: Text(
                          '${tabelaPrato[index].preco}',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            fontSize: 18.0,
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
                child: Center(child: Text(' Total:  $total')),
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
