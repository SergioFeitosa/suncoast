import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:suncoast/components/pagamento_google.dart';

class CreditCardPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final total;

  const CreditCardPage({super.key, this.total});

  @override
  State<StatefulWidget> createState() {
    return CreditCardPageState();
  }
}

class CreditCardPageState extends State<CreditCardPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutter Credit Card View Demo'),
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CreditCardWidget(
              cardBgColor: Colors.red.shade200,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              obscureCardNumber: true,
              // ignore: non_constant_identifier_names
              obscureCardCvv: true,
              // ignore: non_constant_identifier_names
              onCreditCardWidgetChange: (CreditCardBrand) {},
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CreditCardForm(
                      formKey: formKey,
                      onCreditCardModelChange: onCreditCardModelChange,
                      obscureCvv: true,
                      obscureNumber: true,
                      cardNumberDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Number',
                        hintText: 'XXXX XXXX XXXX XXXX',
                      ),
                      expiryDateDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Expired Date',
                        hintText: 'XX/XX',
                      ),
                      cvvCodeDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'CVV',
                        hintText: 'XXX',
                      ),
                      cardHolderDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Card Holder Name',
                      ),
                      cardNumber: '',
                      cardHolderName: '',
                      cvvCode: '',
                      expiryDate: '',
                      themeColor: const Color.fromARGB(9, 200, 49, 49),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff1b447b),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                      onPressed: () {
                        if (formKey.currentState != null) {
                          // ignore: avoid_print
                          print('valid!');
                          showDialog<AlertDialog>(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor:
                                    const Color.fromARGB(255, 238, 253, 191),
                                title: const Text("Valid"),
                                content: const Text(
                                    "Your card successfully valid !!!"),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.cyan,
                                        fixedSize: const Size.fromWidth(18),
                                        padding: const EdgeInsets.all(10),
                                      ),
                                      child: const Text("Ok"),
                                      onPressed: () async {
                                        await Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const PagamentoGoogleApp(),
                                        ));
                                      })
                                ],
                              );
                            },
                          );
                        } else {
                          // ignore: avoid_print
                          print('invalid!');
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: const Text(
                          'Validate',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
