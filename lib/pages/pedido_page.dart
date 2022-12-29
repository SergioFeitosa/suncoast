import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pay/pay.dart';
import '../data/dummy_data.dart';

const _paymentItems = [
  PaymentItem(
    label: 'Total',
    amount: '99.99',
    status: PaymentItemStatus.final_price,
  )
];

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

  @override
  Widget build(BuildContext context) {
    final tabelaPedido = DUMMY_PEDIDOS
        .where((pedido) => (pedido.telefone.contains('11982551256')))
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
          Expanded(
              child:
                  ListView(padding: const EdgeInsets.all(8), children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 200.0),
              height: 50,
              color: Colors.amber[600],
              child: Center(child: Text(' Total:  $total')),
            ),
          ])),
          Expanded(
            child: ListView(
              children: <Widget>[
                GooglePayButton(
                  paymentConfigurationAsset:
                      'default_payment_profile_google_pay.json',
                  paymentItems: _paymentItems,
                  type: GooglePayButtonType.buy,
                  margin: const EdgeInsets.only(top: 200.0),
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
                  margin: const EdgeInsets.only(top: 200.0),
                  onPaymentResult: onApplePayResult,
                  loadingIndicator: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
