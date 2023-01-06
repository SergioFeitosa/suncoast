import 'package:flutter/material.dart';
import 'package:suncoast/pages/aluguelderoupa_page.dart';
import 'package:suncoast/pages/estado_page.dart';
import 'package:suncoast/pages/cidade_page.dart';
import 'package:suncoast/pages/pedido_page.dart';
import 'package:suncoast/pages/praia_aluguelderoupa_page.dart';
import 'package:suncoast/pages/praia_bar_page.dart';
import 'package:suncoast/pages/praia_page.dart';
import 'package:suncoast/pages/bar_page.dart';
import 'package:suncoast/pages/categoria_page.dart';
import 'package:suncoast/pages/prato_page.dart';
import 'package:suncoast/pages/tipo_estabelecimento_page.dart';
import 'utils/app_routes.dart';

void main() {
  runApp(const SunCoastApp());
}

class SunCoastApp extends StatelessWidget {
  const SunCoastApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Raleway',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(secondary: Colors.amber),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                fontSize: 12,
                fontFamily: 'RobotCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.ALUGUELDEROUPA: (context) => const AlugueldeRoupaPage(),
        AppRoutes.BAR: (context) => const BarPage(),
        AppRoutes.CATEGORIA: (context) => const CategoriaPage(),
        AppRoutes.CIDADE: (context) => const CidadePage(),
        //AppRoutes.ESTABELECIMENTO: (context) => const EstabelecimentoPage(),
        AppRoutes.ESTADO: (context) => const EstadoPage(),
        //AppRoutes.FASTFOOD: (context) => const FastFoodPage(),
        AppRoutes.HOME: (context) => const EstadoPage(),
        //AppRoutes.HOTEL: (context) => const HotelPage(),
        AppRoutes.PEDIDO: (context) => const PedidoPage(),
        //AppRoutes.POUSADA: (context) => const PousadaPage(),
        AppRoutes.PRAIA: (context) => const PraiaPage(),
        AppRoutes.PRAIAALUGUELDEROUPA: (context) =>
            const PraiaAlugueldeRoupaPage(),
        AppRoutes.PRAIABAR: (context) => const PraiaBarPage(),
        AppRoutes.PRATO: (context) => const PratoPage(),
        //AppRoutes.QUIOSQUE: (context) => const QuiosquePage(),
        //AppRoutes.RESTAURANTE: (context) => const RestaurantePage(),
        AppRoutes.TIPOESTABELECIMENTO: (context) =>
            const TipoEstabelecimentoPage(),
      },
    );
  }
}
