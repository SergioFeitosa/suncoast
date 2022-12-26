// ignore: duplicate_ignore
// ignore_for_file: constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:suncoast/models/bar.dart';
import 'package:suncoast/models/categoria.dart';
import 'package:suncoast/models/estabelecimento.dart';
import 'package:suncoast/models/estado.dart';
import 'package:suncoast/models/cidade.dart';
import 'package:suncoast/models/pedido.dart';
import 'package:suncoast/models/prato.dart';
import 'package:suncoast/models/restaurante.dart';

import '../models/praia.dart';

// ignore: constant_identifier_names, unnecessary_const
const DUMMY_ESTADOS = const [
  Estado(
      id: '1',
      bandeira: 'assets/images/estados/bandeira-acre-600x420.png',
      sigla: 'AC',
      nome: 'Acre',
      populacao: 906876,
      temperaturaMediaVerao: 27,
      temperaturaMediaInverno: 25,
      cidades: ['1', '2']),
  Estado(
      id: '2',
      bandeira: 'assets/images/estados/bandeira-alagoas-600x400.png',
      sigla: 'AL',
      nome: 'Alagoas',
      populacao: 3365351,
      temperaturaMediaVerao: 27,
      temperaturaMediaInverno: 25,
      cidades: ['1']),
  Estado(
      id: '3',
      bandeira: 'assets/images/estados/bandeira-amapa-600x420.png',
      sigla: 'AP',
      nome: 'Amapá',
      populacao: 877613,
      temperaturaMediaVerao: 29,
      temperaturaMediaInverno: 27,
      cidades: ['1']),
  Estado(
      id: '4',
      bandeira: 'assets/images/estados/bandeira-amazonas-600x428.png',
      sigla: 'AM',
      nome: 'Amazonas',
      populacao: 4269995,
      temperaturaMediaVerao: 29,
      temperaturaMediaInverno: 27,
      cidades: ['1']),
  Estado(
      id: '5',
      bandeira: 'assets/images/estados/bandeira-bahia-600x400.png',
      sigla: 'BA',
      nome: 'Bahia',
      populacao: 14985284,
      temperaturaMediaVerao: 28,
      temperaturaMediaInverno: 25,
      cidades: ['1']),
  Estado(
      id: '6',
      bandeira: 'assets/images/estados/bandeira-ceara-600x420.png',
      sigla: 'CE',
      nome: 'Ceará',
      populacao: 9240580,
      temperaturaMediaVerao: 28,
      temperaturaMediaInverno: 27,
      cidades: ['1']),
  Estado(
      id: '7',
      bandeira: 'assets/images/estados/bandeira-distrito-federal-600x420.png',
      sigla: 'DF',
      nome: 'Distrito Federal',
      populacao: 3094325,
      temperaturaMediaVerao: 23,
      temperaturaMediaInverno: 19,
      cidades: ['1']),
  Estado(
      id: '8',
      bandeira: 'assets/images/estados/bandeira-espirito-santo-600x420.png',
      sigla: 'ES',
      nome: 'Espirito Santo',
      populacao: 4108508,
      temperaturaMediaVerao: 28,
      temperaturaMediaInverno: 23,
      cidades: ['1']),
  Estado(
      id: '9',
      bandeira: 'assets/images/estados/bandeira-goias-600x420.png',
      sigla: 'GO',
      nome: 'Goiás',
      populacao: 7206589,
      temperaturaMediaVerao: 26,
      temperaturaMediaInverno: 17,
      cidades: ['1']),
  Estado(
      id: '10',
      bandeira: 'assets/images/estados/bandeira-maranhao-600x400.png',
      sigla: 'MA',
      nome: 'Maranhão',
      populacao: 7153262,
      temperaturaMediaVerao: 29,
      temperaturaMediaInverno: 27,
      cidades: ['1']),
  Estado(
      id: '11',
      bandeira: 'assets/images/estados/bandeira-mato-grosso-600x420.png',
      sigla: 'MT',
      nome: 'Mato Grosso',
      populacao: 3567234,
      temperaturaMediaVerao: 29,
      temperaturaMediaInverno: 25,
      cidades: ['1']),
  Estado(
      id: '12',
      bandeira: 'assets/images/estados/bandeira-mato-grosso-do-sul-600x420.png',
      sigla: 'MS',
      nome: 'Mato Grosso do Sul',
      populacao: 2839188,
      temperaturaMediaVerao: 26,
      temperaturaMediaInverno: 22,
      cidades: ['1']),
  Estado(
      id: '13',
      bandeira: 'assets/images/estados/bandeira-minas-gerais-600x420.png',
      sigla: 'MG',
      nome: 'Minas Gerais',
      populacao: 21411923,
      temperaturaMediaVerao: 24,
      temperaturaMediaInverno: 19,
      cidades: ['1']),
  Estado(
      id: '14',
      bandeira: 'assets/images/estados/bandeira-para-600x400.png',
      sigla: 'PA',
      nome: 'Pará',
      populacao: 8777124,
      temperaturaMediaVerao: 28,
      temperaturaMediaInverno: 27,
      cidades: ['1']),
  Estado(
      id: '15',
      bandeira: 'assets/images/estados/bandeira-paraiba-600x420.png',
      sigla: 'PB',
      nome: 'Paraíba',
      populacao: 4059905,
      temperaturaMediaVerao: 28,
      temperaturaMediaInverno: 26,
      cidades: ['1', '2', '3', '4']),
  Estado(
      id: '16',
      bandeira: 'assets/images/estados/bandeira-parana-600x420.png',
      sigla: 'PR',
      nome: 'Paraná',
      populacao: 11597484,
      temperaturaMediaVerao: 22,
      temperaturaMediaInverno: 14,
      cidades: ['1']),
  Estado(
      id: '17',
      bandeira: 'assets/images/estados/bandeira-pernambuco-600x400.png',
      sigla: 'PE',
      nome: 'Pernambuco',
      populacao: 9674793,
      temperaturaMediaVerao: 28,
      temperaturaMediaInverno: 26,
      cidades: ['1']),
  Estado(
      id: '18',
      bandeira: 'assets/images/estados/bandeira-piaui-600x400.png',
      sigla: 'PI',
      nome: 'Piauí',
      populacao: 3289290,
      temperaturaMediaVerao: 31,
      temperaturaMediaInverno: 28,
      cidades: ['1']),
  Estado(
      id: '19',
      bandeira: 'assets/images/estados/bandeira-rio-de-janeiro-600x420.png',
      sigla: 'RJ',
      nome: 'Rio de Janeiro',
      populacao: 17463349,
      temperaturaMediaVerao: 27,
      temperaturaMediaInverno: 22,
      cidades: ['1']),
  Estado(
      id: '20',
      bandeira:
          'assets/images/estados/bandeira-rio-grande-do-norte-600x400.png',
      sigla: 'RN',
      nome: 'Rio Grande do Norte',
      populacao: 3560903,
      temperaturaMediaVerao: 28,
      temperaturaMediaInverno: 26,
      cidades: ['1']),
  Estado(
      id: '21',
      bandeira: 'assets/images/estados/bandeira-rio-grande-do-sul-600x420.png',
      sigla: 'RS',
      nome: 'Rio Grande do Sul',
      populacao: 11466630,
      temperaturaMediaVerao: 25,
      temperaturaMediaInverno: 14,
      cidades: ['1']),
  Estado(
      id: '22',
      bandeira: 'assets/images/estados/bandeira-rondonia-600x420.png',
      sigla: 'RO',
      nome: 'Rondônia',
      populacao: 1815278,
      temperaturaMediaVerao: 28,
      temperaturaMediaInverno: 26,
      cidades: ['1']),
  Estado(
      id: '23',
      bandeira: 'assets/images/estados/bandeira-roraima-600x400.png',
      sigla: 'RR',
      nome: 'Roraima',
      populacao: 652713,
      temperaturaMediaVerao: 29,
      temperaturaMediaInverno: 27,
      cidades: ['1']),
  Estado(
      id: '24',
      bandeira: 'assets/images/estados/bandeira-santa-catarina-600x436.png',
      sigla: 'SC',
      nome: 'Santa Catarina',
      populacao: 11466630,
      temperaturaMediaVerao: 25,
      temperaturaMediaInverno: 17,
      cidades: ['1']),
  Estado(
      id: '25',
      bandeira: 'assets/images/estados/bandeira-sao-paulo-600x400.png',
      sigla: 'SP',
      nome: 'São Paulo',
      populacao: 46649132,
      temperaturaMediaVerao: 24,
      temperaturaMediaInverno: 17,
      cidades: ['1']),
  Estado(
      id: '26',
      bandeira: 'assets/images/estados/bandeira-sergipe-600x420.png',
      sigla: 'SE',
      nome: 'Sergipe',
      populacao: 2338474,
      temperaturaMediaVerao: 28,
      temperaturaMediaInverno: 25,
      cidades: ['1']),
  Estado(
      id: '27',
      bandeira: 'assets/images/estados/bandeira-tocantins-600x420.png',
      sigla: 'TO',
      nome: 'Tocantins',
      populacao: 1607363,
      temperaturaMediaVerao: 29,
      temperaturaMediaInverno: 26,
      cidades: ['1']),
];

// ignore: unnecessary_const, constant_identifier_names
const DUMMY_CIDADES = const [
  Cidade(
      id: '1',
      imagem: 'assets/images/cidades/baia-da-traicao.jpg',
      nome: 'Baia da Traição',
      temperatura: 27,
      praias: ['2']),
  Cidade(
      id: '2',
      imagem: 'assets/images/cidades/cabedelo.jpg',
      nome: 'Cabedelo',
      temperatura: 27,
      praias: ['3']),
  Cidade(
      id: '3',
      imagem: 'assets/images/cidades/conde.jpg',
      nome: 'Conde',
      temperatura: 27,
      praias: ['4']),
  Cidade(
      id: '4',
      imagem: 'assets/images/cidades/joao-pessoa.jpg',
      nome: 'João Pessoa',
      temperatura: 27,
      praias: ['1', '2', '3', '4', '5']),
  Cidade(
      id: '5',
      imagem: 'assets/images/cidades/lucena.jpg',
      nome: 'Lucena',
      temperatura: 27,
      praias: ['6']),
  Cidade(
      id: '6',
      imagem: 'assets/images/cidades/marcacao.jpg',
      nome: 'Marcação',
      temperatura: 27,
      praias: ['7']),
  Cidade(
      id: '7',
      imagem: 'assets/images/cidades/mataraca.jpg',
      nome: 'Mataraca',
      temperatura: 27,
      praias: ['8']),
  Cidade(
      id: '8',
      imagem: 'assets/images/cidades/pitimbu.jpg',
      nome: 'Pitimbú',
      temperatura: 27,
      praias: ['9']),
  Cidade(
      id: '9',
      imagem: 'assets/images/cidades/rio-tinto.jpg',
      nome: 'Rio Tinto',
      temperatura: 27,
      praias: ['10']),
];

// ignore: unnecessary_const, constant_identifier_names

const DUMMY_PRAIAS = [
  Praia(
      id: '1',
      imagem: 'assets/images/praias/praia-bessa.jpg',
      nome: 'Bessa',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      bares: ['1'],
      restaurantes: ['1']),
  Praia(
      id: '2',
      imagem: 'assets/images/praias/praia-manaira.jpg',
      nome: 'Manaíra',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      bares: ['1'],
      restaurantes: ['1']),
  Praia(
      id: '3',
      imagem: 'assets/images/praias/praia-cabo-branco.jpg',
      nome: 'Cabo Branco',
      temperatura: 27,
      tipoEstabelecimentos: [
        '1',
        '2',
        '3'
      ],
      bares: [
        '1',
        '2',
        '3',
        '4',
      ],
      restaurantes: [
        '1'
      ]),
  Praia(
      id: '4',
      imagem: 'assets/images/cidades/cabedelo.jpg',
      nome: 'Ponta do Seixas',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      bares: ['1'],
      restaurantes: ['1']),
  Praia(
      id: '5',
      imagem: 'assets/images/praias/praia-tambau.jpg',
      nome: 'Tambaú',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      bares: ['1'],
      restaurantes: ['1']),
  Praia(
      id: '6',
      imagem: 'assets/images/cidades/joao-pessoa.jpg',
      nome: 'João Pessoa',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      bares: ['1'],
      restaurantes: ['1']),
  Praia(
      id: '7',
      imagem: 'assets/images/cidades/lucena.jpg',
      nome: 'Lucena',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      bares: ['1'],
      restaurantes: ['1']),
  Praia(
      id: '8',
      imagem: 'assets/images/cidades/marcacao.jpg',
      nome: 'Marcação',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      bares: ['1'],
      restaurantes: ['1']),
  Praia(
      id: '9',
      imagem: 'assets/images/cidades/mataraca.jpg',
      nome: 'Mataraca',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      bares: ['1'],
      restaurantes: ['1']),
  Praia(
      id: '10',
      imagem: 'assets/images/cidades/pitimbu.jpg',
      nome: 'Pitimbú',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      bares: ['1'],
      restaurantes: ['1']),
  Praia(
      id: '11',
      imagem: 'assets/images/cidades/rio-tinto.jpg',
      nome: 'Rio Tinto',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      bares: ['1'],
      restaurantes: ['1']),
];

const DUMMY_BARES = [
  Bar(
      id: '1',
      imagem: 'assets/images/praias/praia-bessa.jpg',
      nome: 'Bar do Zé',
      pedidos: ['1', '2'],
      categorias: ['1', '2'],
      pratosRegionais: ['1', '2', '3'],
      pratosTradicionais: ['1', '2', '3'],
      porcoes: ['1', '2', '3']),
  Bar(
      id: '2',
      imagem: 'assets/images/praias/praia-cabo-branco.jpg',
      nome: 'Bar Bantinho',
      categorias: ['2'],
      pedidos: ['1', '2'],
      pratosRegionais: ['1'],
      pratosTradicionais: ['1'],
      porcoes: []),
  Bar(
      id: '3',
      imagem: 'assets/images/praias/praia-cabo-branco.jpg',
      nome: 'Bar racuda',
      categorias: ['3'],
      pedidos: ['1', '2'],
      pratosRegionais: ['1'],
      pratosTradicionais: ['2'],
      porcoes: ['1', '2', '3']),
  Bar(
      id: '4',
      imagem: 'assets/images/praias/praia-cabo-branco.jpg',
      nome: 'Bar toré',
      categorias: ['1'],
      pedidos: ['1', '2'],
      pratosRegionais: ['1', '2', '3'],
      pratosTradicionais: ['2'],
      porcoes: ['2']),
];

const DUMMY_RESTAURANTES = [
  Restaurante(
      id: '1',
      imagem: 'assets/images/praias/praia-bessa.jpg',
      nome: 'RESTAURANTE DO zÉ',
      categorias: ['1']),
  Restaurante(
      id: '2',
      imagem: 'assets/images/praias/praia-cabo-branco.jpg',
      nome: 'RESTAURANTE Bantinho',
      categorias: ['2']),
  Restaurante(
      id: '3',
      imagem: 'assets/images/praias/praia-cabo-branco.jpg',
      nome: 'RESTAURANTE racuda',
      categorias: ['3']),
  Restaurante(
      id: '4',
      imagem: 'assets/images/praias/praia-cabo-branco.jpg',
      nome: 'RESTAURANTE toré',
      categorias: ['4']),
];

// ignore: unnecessary_const, constant_identifier_names
const DUMMY_TIPO_ESTABELECIMENTOS = const [
  Estabelecimento(
    id: '1',
    title: 'Bares',
    color: Colors.purple,
  ),
  Estabelecimento(
    id: '2',
    title: 'Shopping',
    color: Colors.red,
  ),
  Estabelecimento(
    id: '3',
    title: 'Quiosques',
    color: Colors.orange,
  ),
  Estabelecimento(
    id: '4',
    title: 'Artesanatos',
    color: Colors.cyan,
  ),
  Estabelecimento(
    id: '5',
    title: 'Feirinhas',
    color: Colors.grey,
  ),
  Estabelecimento(id: '6', title: 'Restaurantes', color: Colors.orange),
];

// ignore: unnecessary_const, constant_identifier_names
const DUMMY_CATEGORIAS = const [
  Categoria(
    id: '1',
    title: 'Pratos    Regionais',
    color: Colors.purple,
  ),
  Categoria(
    id: '2',
    title: 'Pratos Tradicionais',
    color: Colors.red,
  ),
  Categoria(
    id: '3',
    title: 'Porções',
    color: Colors.orange,
  ),
  Categoria(
    id: '4',
    title: 'Bebidas',
    color: Colors.cyan,
  ),
  Categoria(
    id: '5',
    title: 'Drinks',
    color: Colors.grey,
  ),
];

// ignore: unnecessary_const, constant_identifier_names
const DUMMY_PRATOS = const [
  Prato(
      id: '1',
      title: 'Baião de Dois',
      color: Colors.purple,
      imagem: 'assets/images/pratos/pratos_regionais/baiao-dois-1.jpg',
      descricao:
          'O "Baião de Dois" é um prato típico do Nordeste do Brasil, vindo do Ceará. É um preparado de arroz e feijão, usado preferencialmente o feijão de corda. ',
      preco: 25.00,
      observacao: '',
      tempoPreparo: '30 minutos',
      ingredientes: ['Arroz'],
      modoPreparo: ''),
  Prato(
      id: '2',
      title: 'Carne de sol com macaxeira',
      color: Colors.red,
      imagem:
          'assets/images/pratos/pratos_regionais/carnedesol-commacaxeira.jpg',
      descricao:
          'Típica do nordeste brasileiro, a carne de sol, denominada também carne de vento e carne do sertão, é um método de conservar alimentos de origem animal salgando-se e secando-se, em local coberto e bem ventilado, peças de carne, em geral bovina. Apesar do nome, não é exposta aos raios solares. A mandioca é uma espécie arbustiva, lenhosa e perene. ',
      preco: 45.00,
      observacao: '',
      tempoPreparo: '30 minutos',
      ingredientes: ['Carne de Sol'],
      modoPreparo: ''),
  Prato(
      id: '3',
      title: 'Peixe Cioba',
      color: Colors.orange,
      imagem: 'assets/images/pratos/peixes/cioba-frito.jpg',
      descricao:
          'Peixe abundante no litoral nordestino. O prato atende até 3 pessoas. Acompanhamento: arroz e fritas ',
      preco: 85.00,
      observacao: '',
      tempoPreparo: '30 minutos',
      ingredientes: ['Peixe Cioba'],
      modoPreparo: ''),
  Prato(
      id: '4',
      title: 'Rubacão',
      color: Colors.cyan,
      imagem: 'assets/images/pratos/pratos_regionais/rubacao.jpg',
      descricao:
          'Rubacão é uma espécie de baião-de-dois ao qual se adiciona feijão-de-corda (feijão-verde), feijão-branco ou mulatinho. ',
      preco: 35.00,
      observacao: '',
      tempoPreparo: '30 minutos',
      ingredientes: ['Carne de sol'],
      modoPreparo: ''),
  Prato(
      id: '5',
      title: 'Carne de Sol com Queijo Coalho',
      color: Colors.grey,
      imagem:
          'assets/images/pratos/pratos_regionais/carnedesol-comqueijocoalho.jpg',
      descricao:
          'Típica do nordeste brasileiro, a carne de sol, denominada também carne de vento e carne do sertão, é um método de conservar alimentos de origem animal salgando-se e secando-se, em local coberto e bem ventilado, peças de carne, em geral bovina. Apesar do nome, não é exposta aos raios solares. O queijo de coalho é um queijo de média a alta umidade, de massa semicozida ou cozida e apresenta um teor de gordura nos sólidos totais variável entre 35% e 60%. ',
      preco: 35.00,
      observacao: '',
      tempoPreparo: '30 minutos',
      ingredientes: ['Carne de Sol'],
      modoPreparo: 'Misture tudo'),
  Prato(
      id: '6',
      title: 'Espaguete com camarão',
      color: Colors.grey,
      imagem: 'assets/images/pratos/frutos_do_mar/camarao-espaguete.jpg',
      descricao: 'Espaguete com camarão a milanesa',
      preco: 35.00,
      observacao: '',
      tempoPreparo: '30 minutos',
      ingredientes: ['Espaguete', 'Camarão Rosa'],
      modoPreparo: 'Misture tudo'),
];

const DUMMY_PEDIDOS = [
  Pedido(
    id: '1',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '11982551256',
  ),
  Pedido(
    id: '2',
    local: 'mesa01',
    itens: ['4', '5', '6'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '11982551256',
  ),
  Pedido(
    id: '3',
    local: '3',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '11982551256',
  ),
  Pedido(
    id: '4',
    local: '1',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '83991377693',
  ),
  Pedido(
    id: '5',
    local: '3',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '83991377693',
  ),
];

const List<String> DUMMY_IMAGES_PRATOS_REGIONAIS = [
  'assets/images/pratos/pratos_regionais/baiao-dois-1.jpg',
  'assets/images/pratos/pratos_regionais/carnedesol-commacaxeira.jpg',
  'assets/images/pratos/peixes/cioba-frito.jpg',
  'assets/images/pratos/pratos_regionais/rubacao.jpg',
  'assets/images/pratos/pratos_regionais/carnedesol-comqueijocoalho.jpg',
];

const List<String> DUMMY_IMAGES_PRATOS_EXECUTIVOS = [
  "assets/images/pratos/pratos_executivos/berinjela-recheada.jpg",
  "assets/images/pratos/pratos_executivos/espaguete-abolonhesa.jpg",
  "assets/images/pratos/pratos_executivos/pratoespecial.jpg",
  "assets/images/pratos/pratos_executivos/pratododia.jpg",
  "assets/images/pratos/pratos_executivos/pratododia-small.jpg",
  "assets/images/pratos/pratos_executivos/pratoespecial.jpg",
  "assets/images/pratos/pratos_executivos/berinjela-recheada.jpg",
];

const List<String> DUMMY_IMAGES_PORCOES = [
  "assets/images/pratos/porcoes/porcoes.jpg",
  "assets/images/pratos/porcoes/porcoesespeciais.jpg",
  "assets/images/pratos/porcoes/porcoes.jpg",
  "assets/images/pratos/porcoes/porcoesespeciais.jpg",
  "assets/images/pratos/porcoes/porcoes.jpg",
];

const List<String> DUMMY_IMAGES_PEIXES = [
  "assets/images/pratos/peixes/cioba-frito.jpg",
  "assets/images/pratos/peixes/pescadaamarela.jpg",
  "assets/images/pratos/peixes/tilapia-aomolhodealcaparras.jpg",
  "assets/images/pratos/peixes/tilapia-aomolhodecamarao.jpg",
  "assets/images/pratos/peixes/tilapia-filecomlegumes.jpg",
  "assets/images/pratos/peixes/tilapia-fileempanado.jpg",
  "assets/images/pratos/peixes/pescadaamarela.jpg",
  "assets/images/pratos/peixes/tilapia-aomolhodecamarao.jpg",
];

const List<String> DUMMY_IMAGES_BEBIDAS = [
  "assets/images/bebidas/refrigerantes/cocacola-lata350ml.jpg",
  "assets/images/bebidas/cervejas/cerveja.jpg",
];
