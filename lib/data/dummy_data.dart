// ignore: duplicate_ignore
// ignore_for_file: constant_identifier_names, duplicate_ignore, prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:suncoast/models/alugueldeveiculos.dart';
import 'package:suncoast/models/artesanato.dart';
import 'package:suncoast/models/bar.dart';
import 'package:suncoast/models/bebida.dart';
import 'package:suncoast/models/categoria.dart';
import 'package:suncoast/models/estabelecimento.dart';
import 'package:suncoast/models/estado.dart';
import 'package:suncoast/models/cidade.dart';
import 'package:suncoast/models/farmacia.dart';
import 'package:suncoast/models/feirinha.dart';
import 'package:suncoast/models/hamburgueria.dart';
import 'package:suncoast/models/lojaderoupas.dart';
import 'package:suncoast/models/materialdeconstrucao.dart';
import 'package:suncoast/models/padaria.dart';
import 'package:suncoast/models/pedido.dart';
import 'package:suncoast/models/pedidoroupa.dart';
import 'package:suncoast/models/pizzaria.dart';
import 'package:suncoast/models/prato.dart';
import 'package:suncoast/models/quiosque.dart';
import 'package:suncoast/models/restaurante.dart';
import 'package:suncoast/models/roupa.dart';
import 'package:suncoast/models/salaodebeleza.dart';
import 'package:suncoast/models/shopping.dart';
import 'package:suncoast/models/supermercado.dart';

import '../models/aluguelderoupas.dart';
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
      aluguelderoupas: ['1'],
      alugueldeveiculos: [],
      artesanato: [],
      bar: [],
      farmacia: [],
      feirinha: [],
      hamburgueria: [],
      lojaderoupas: [],
      materialdeconstrucao: [],
      padaria: [],
      pizzaria: [],
      quiosque: [],
      restaurante: [],
      salaodebeleza: [],
      shopping: [],
      supermercado: []),
  Praia(
      id: '2',
      imagem: 'assets/images/praias/praia-manaira.jpg',
      nome: 'Manaíra',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      aluguelderoupas: [],
      alugueldeveiculos: [],
      artesanato: [],
      bar: [],
      farmacia: [],
      feirinha: [],
      hamburgueria: [],
      lojaderoupas: [],
      materialdeconstrucao: [],
      padaria: [],
      pizzaria: [],
      quiosque: [],
      restaurante: [],
      salaodebeleza: [],
      shopping: [],
      supermercado: []),
  Praia(
      id: '3',
      imagem: 'assets/images/praias/praia-cabo-branco.jpg',
      nome: 'Cabo Branco',
      temperatura: 27,
      tipoEstabelecimentos: ['1', '4'],
      aluguelderoupas: ['1', '2'],
      alugueldeveiculos: ['1'],
      artesanato: [],
      bar: ['1', '2', '3', '4'],
      farmacia: [],
      feirinha: [],
      hamburgueria: [],
      lojaderoupas: [],
      materialdeconstrucao: [],
      padaria: [],
      pizzaria: [],
      quiosque: [],
      restaurante: [],
      salaodebeleza: [],
      shopping: [],
      supermercado: []),
  Praia(
      id: '4',
      imagem: 'assets/images/cidades/cabedelo.jpg',
      nome: 'Ponta do Seixas',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      aluguelderoupas: [],
      alugueldeveiculos: [],
      artesanato: [],
      bar: [],
      farmacia: [],
      feirinha: [],
      hamburgueria: [],
      lojaderoupas: [],
      materialdeconstrucao: [],
      padaria: [],
      pizzaria: [],
      quiosque: [],
      restaurante: [],
      salaodebeleza: [],
      shopping: [],
      supermercado: []),
  Praia(
      id: '5',
      imagem: 'assets/images/praias/praia-tambau.jpg',
      nome: 'Tambaú',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      aluguelderoupas: [],
      alugueldeveiculos: [],
      artesanato: [],
      bar: [],
      farmacia: [],
      feirinha: [],
      hamburgueria: [],
      lojaderoupas: [],
      materialdeconstrucao: [],
      padaria: [],
      pizzaria: [],
      quiosque: [],
      restaurante: [],
      salaodebeleza: [],
      shopping: [],
      supermercado: []),
  Praia(
      id: '6',
      imagem: 'assets/images/cidades/joao-pessoa.jpg',
      nome: 'João Pessoa',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      aluguelderoupas: [],
      alugueldeveiculos: [],
      artesanato: [],
      bar: [],
      farmacia: [],
      feirinha: [],
      hamburgueria: [],
      lojaderoupas: [],
      materialdeconstrucao: [],
      padaria: [],
      pizzaria: [],
      quiosque: [],
      restaurante: [],
      salaodebeleza: [],
      shopping: [],
      supermercado: []),
  Praia(
      id: '7',
      imagem: 'assets/images/cidades/lucena.jpg',
      nome: 'Lucena',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      aluguelderoupas: [],
      alugueldeveiculos: [],
      artesanato: [],
      bar: [],
      farmacia: [],
      feirinha: [],
      hamburgueria: [],
      lojaderoupas: [],
      materialdeconstrucao: [],
      padaria: [],
      pizzaria: [],
      quiosque: [],
      restaurante: [],
      salaodebeleza: [],
      shopping: [],
      supermercado: []),
  Praia(
      id: '8',
      imagem: 'assets/images/cidades/marcacao.jpg',
      nome: 'Marcação',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      aluguelderoupas: [],
      alugueldeveiculos: [],
      artesanato: [],
      bar: [],
      farmacia: [],
      feirinha: [],
      hamburgueria: [],
      lojaderoupas: [],
      materialdeconstrucao: [],
      padaria: [],
      pizzaria: [],
      quiosque: [],
      restaurante: [],
      salaodebeleza: [],
      shopping: [],
      supermercado: []),
  Praia(
      id: '9',
      imagem: 'assets/images/cidades/mataraca.jpg',
      nome: 'Mataraca',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      aluguelderoupas: [],
      alugueldeveiculos: [],
      artesanato: [],
      bar: [],
      farmacia: [],
      feirinha: [],
      hamburgueria: [],
      lojaderoupas: [],
      materialdeconstrucao: [],
      padaria: [],
      pizzaria: [],
      quiosque: [],
      restaurante: [],
      salaodebeleza: [],
      shopping: [],
      supermercado: []),
  Praia(
      id: '10',
      imagem: 'assets/images/cidades/pitimbu.jpg',
      nome: 'Pitimbú',
      temperatura: 27,
      tipoEstabelecimentos: ['1'],
      aluguelderoupas: [],
      alugueldeveiculos: [],
      artesanato: [],
      bar: [],
      farmacia: [],
      feirinha: [],
      hamburgueria: [],
      lojaderoupas: [],
      materialdeconstrucao: [],
      padaria: [],
      pizzaria: [],
      quiosque: [],
      restaurante: [],
      salaodebeleza: [],
      shopping: [],
      supermercado: []),
  Praia(
      id: '11',
      imagem: 'assets/images/cidades/rio-tinto.jpg',
      nome: 'Rio Tinto',
      temperatura: 27,
      tipoEstabelecimentos: ['1', '2'],
      aluguelderoupas: [],
      alugueldeveiculos: [],
      artesanato: [],
      bar: [],
      farmacia: [],
      feirinha: [],
      hamburgueria: [],
      lojaderoupas: [],
      materialdeconstrucao: [],
      padaria: [],
      pizzaria: [],
      quiosque: [],
      restaurante: [],
      salaodebeleza: [],
      shopping: [],
      supermercado: []),
];

// ignore: unnecessary_const, constant_identifier_names
const DUMMY_TIPO_ESTABELECIMENTO = const [
  Estabelecimento(
    id: '1',
    title: 'Aluguel de Roupas',
    color: Colors.purple,
  ),
  Estabelecimento(
    id: '2',
    title: 'Aluguel de Veículos',
    color: Colors.red,
  ),
  Estabelecimento(
    id: '3',
    title: 'Artesanato',
    color: Colors.orange,
  ),
  Estabelecimento(
    id: '4',
    title: 'Bar',
    color: Colors.cyan,
  ),
  Estabelecimento(
    id: '5',
    title: 'Farmácia',
    color: Colors.grey,
  ),
  Estabelecimento(
    id: '6',
    title: 'Feirinha',
    color: Colors.orange,
  ),
  Estabelecimento(
    id: '7',
    title: 'Hamburgueria',
    color: Colors.orange,
  ),
  Estabelecimento(
    id: '8',
    title: 'Loja de Roupas',
    color: Colors.orange,
  ),
  Estabelecimento(
    id: '9',
    title: 'Material de construção',
    color: Colors.orange,
  ),
  Estabelecimento(
    id: '10',
    title: 'Padaria',
    color: Colors.orange,
  ),
  Estabelecimento(
    id: '11',
    title: 'Pizzaria',
    color: Colors.orange,
  ),
  Estabelecimento(
    id: '12',
    title: 'Quiosque',
    color: Colors.orange,
  ),
  Estabelecimento(
    id: '13',
    title: 'Restaurante',
    color: Colors.orange,
  ),
  Estabelecimento(
    id: '14',
    title: 'Salão de Beleza',
    color: Colors.orange,
  ),
  Estabelecimento(
    id: '15',
    title: 'Shopping',
    color: Colors.orange,
  ),
  Estabelecimento(
    id: '16',
    title: 'Super Mercado',
    color: Colors.orange,
  ),
];

// ignore: unnecessary_const, constant_identifier_names
const DUMMY_CATEGORIA = const [
  Categoria(
    id: '1',
    title: 'Pratos    Regionais',
    color: Colors.purple,
    tipo: '1',
  ),
  Categoria(
    id: '2',
    title: 'Pratos Tradicionais',
    color: Colors.red,
    tipo: '1',
  ),
  Categoria(
    id: '3',
    title: 'Porções',
    color: Colors.orange,
    tipo: '1',
  ),
  Categoria(
    id: '4',
    title: 'Bebidas',
    color: Colors.cyan,
    tipo: '2',
  ),
  Categoria(
    id: '5',
    title: 'Social',
    color: Colors.grey,
    tipo: '3',
  ),
  Categoria(
    id: '6',
    title: 'Rigor',
    color: Colors.grey,
    tipo: '3',
  ),
  Categoria(
    id: '7',
    title: 'Esporte',
    color: Colors.grey,
    tipo: '3',
  ),
];
/*
Tipo 1 = Pratos
Tipo 2 = Bebidas
Tipo 3 = Roupas
*/

// ignore: unnecessary_const, constant_identifier_names
const DUMMY_PRATO = const [
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
      ingredientes: ['Carne de Sol', 'Charque'],
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
      imagem:
          'assets/images/pratos/pratos_regionais/carnedesol-comqueijocoalho.jpg',
      descricao: 'Espaguete com camarão a milanesa',
      preco: 35.00,
      observacao: '',
      tempoPreparo: '30 minutos',
      ingredientes: ['Espaguete', 'Camarão Rosa'],
      modoPreparo: 'Misture tudo'),
];

const DUMMY_ROUPA = const [
  Roupa(
      id: '1',
      title: 'Calça Social',
      color: Colors.purple,
      imagem: 'assets/images/roupa/social/calca.jpg',
      descricao: 'Calça Social',
      preco: 25.00,
      observacao: ''),
  Roupa(
      id: '2',
      title: 'Camisa social',
      color: Colors.red,
      imagem: 'assets/images/roupa/social/camisa.jpg',
      descricao: 'Camisa social',
      preco: 45.00,
      observacao: ''),
  Roupa(
      id: '3',
      title: 'Outra Calça Social ',
      color: Colors.orange,
      imagem: 'assets/images/roupa/esporte/calca.jpg',
      descricao: 'Outra Calça',
      preco: 85.00,
      observacao: ''),
  Roupa(
      id: '4',
      title: 'Calça a Rigor',
      color: Colors.cyan,
      imagem: 'assets/images/roupa/esporte/calca.jpg',
      descricao: 'Calça a Rigor',
      preco: 35.00,
      observacao: ''),
  Roupa(
      id: '5',
      title: 'Camisa a Rigor',
      color: Colors.grey,
      imagem: 'assets/images/roupa/rigor/camisa.jpg',
      descricao: 'Camisa a Rigor',
      preco: 35.00,
      observacao: ''),
  Roupa(
      id: '6',
      title: 'Smoking',
      color: Colors.grey,
      imagem: 'assets/images/roupa/rigor/smoking.jpg',
      descricao: 'Smoking',
      preco: 35.00,
      observacao: ''),
  Roupa(
      id: '7',
      title: 'Camisa a Rigor',
      color: Colors.grey,
      imagem: 'assets/images/roupa/rigor/camisa.jpg',
      descricao: 'Terno',
      preco: 35.00,
      observacao: '')
];

const DUMMY_BEBIDA = const [
  Bebida(
    id: '1',
    nome: 'Coca Cola',
    imagem: 'assets/images/bebidas/refrigerantes/cocacola-lata350ml.jpg',
    descricao: 'Refrigerante de Cola',
    preco: 2.00,
    ingredientes: ['Cola', 'Açúcar'],
    categorias: ['1'],
  ),
  Bebida(
    id: '2',
    nome: 'Guaraná',
    imagem: 'assets/images/bebidas/refrigerantes/cocacola-lata350ml.jpg',
    descricao: 'Refrigerante de Guaraná',
    preco: 2.00,
    ingredientes: ['Guaraná', 'Açúcar'],
    categorias: ['1'],
  ),
  Bebida(
    id: '3',
    nome: 'Cerveja',
    imagem: 'assets/images/bebidas/refrigerantes/cocacola-lata350ml.jpg',
    descricao: 'Cerveja',
    preco: 2.00,
    ingredientes: ['Malte', 'Açúcar'],
    categorias: ['1'],
  ),
];

// ignore: non_constant_identifier_names
const DUMMY_PEDIDO = const [
  Pedido(
    id: '1',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '11982551256',
    quantidade: '1',
  ),
  Pedido(
    id: '2',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '11982551256',
    quantidade: '1',
  ),
  Pedido(
    id: '3',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '83991377693',
    quantidade: '1',
  ),
  Pedido(
    id: '4',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '83991377693',
    quantidade: '1',
  ),
  Pedido(
    id: '5',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '83991377693',
    quantidade: '1',
  ),
  Pedido(
    id: '6',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '83991377693',
    quantidade: '1',
  ),
];

// ignore: non_constant_identifier_names
const DUMMY_PEDIDOROUPA = const [
  PedidoRoupa(
    id: '1',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '11982551256',
    quantidade: '1',
  ),
  PedidoRoupa(
    id: '2',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '11982551256',
    quantidade: '1',
  ),
  PedidoRoupa(
    id: '3',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '83991377693',
    quantidade: '1',
  ),
  PedidoRoupa(
    id: '4',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '83991377693',
    quantidade: '1',
  ),
  PedidoRoupa(
    id: '5',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '83991377693',
    quantidade: '1',
  ),
  PedidoRoupa(
    id: '6',
    local: 'mesa01',
    itens: ['1', '2', '3'],
    horaPedido: '12:00',
    horaEntrega: '12:25',
    telefone: '83991377693',
    quantidade: '1',
  ),
];

const DUMMY_ALUGUELDEROUPAS = const [
  AlugueldeRoupas(
    id: '1',
    imagem: 'assets/images/aluguelderoupas/aluguelderoupas.jpg',
    nome: 'Aluguel de Roupas Dona Maria',
    pedidos: ['1', '2'],
    categorias: ['5', '6'],
    social: ['1'],
    rigor: ['5'],
    esporte: [],
  ),
  AlugueldeRoupas(
    id: '2',
    imagem: 'assets/images/aluguelderoupas/aluguelderoupas.jpg',
    nome: 'Aluguel de Roupas Dona Neusa',
    pedidos: ['1', '2'],
    categorias: ['5', '6'],
    social: ['1'],
    rigor: ['5'],
    esporte: [],
  ),
  AlugueldeRoupas(
    id: '3',
    imagem: 'assets/images/aluguelderoupas/aluguelderoupas.jpg',
    nome: 'Aluguel de Roupas Dona Ondina',
    pedidos: ['1', '2'],
    categorias: ['5', '6'],
    social: ['1'],
    rigor: ['5'],
    esporte: [],
  ),
  AlugueldeRoupas(
    id: '4',
    imagem: 'assets/images/aluguelderoupas/aluguelderoupas.jpg',
    nome: 'Aluguel de Roupas Dona Olivia',
    pedidos: ['1', '2'],
    categorias: ['5', '6'],
    social: ['1'],
    rigor: ['5'],
    esporte: [],
  ),
];

const DUMMY_ALUGUELDEVEICULOS = const [
  AlugueldeVeiculos(
      id: '1',
      imagem: 'assets/images/aluguelderoupas/alugueldeveiculos.jpg',
      nome: 'Aluguel de Veículos Carro01',
      categorias: ['1']),
  AlugueldeVeiculos(
      id: '2',
      imagem: 'assets/images/aluguelderoupas/alugueldeveiculos.jpg',
      nome: 'Aluguel de Veículos Carro02',
      categorias: ['2']),
  AlugueldeVeiculos(
      id: '3',
      imagem: 'assets/images/aluguelderoupas/alugueldeveiculos.jpg',
      nome: 'Aluguel de Veículos Carro03',
      categorias: ['3']),
  AlugueldeVeiculos(
      id: '4',
      imagem: 'assets/images/aluguelderoupas/alugueldeveiculos.jpg',
      nome: 'Aluguel de Veículos Carro04',
      categorias: ['4']),
];

const DUMMY_ARTESANATO = const [
  Artesanato(
      id: '1',
      imagem: 'assets/images/artesanato/artesanato.jpg',
      nome: 'Artesanato01',
      categorias: ['1']),
  Artesanato(
      id: '2',
      imagem: 'assets/images/artesanato/artesanato.jpg',
      nome: 'Artesanato02',
      categorias: ['2']),
  Artesanato(
      id: '3',
      imagem: 'assets/images/artesanato/artesanato.jpg',
      nome: 'Artesanato03',
      categorias: ['3']),
  Artesanato(
      id: '4',
      imagem: 'assets/images/artesanato/artesanato.jpg',
      nome: 'Artesanato04',
      categorias: ['4']),
];

const DUMMY_BAR = const [
  Bar(
      id: '1',
      imagem: 'assets/images/bar/bar.jpg',
      nome: 'Bar do Zé',
      pedidos: ['1', '2'],
      categorias: ['1', '2'],
      pratosRegionais: ['1', '2', '3'],
      pratosTradicionais: ['1', '2', '3'],
      porcoes: ['1', '2', '3']),
  Bar(
      id: '2',
      imagem: 'assets/images/bar/bar.jpg',
      nome: 'Bar Bantinho',
      categorias: ['2'],
      pedidos: ['1', '2'],
      pratosRegionais: ['1'],
      pratosTradicionais: ['1'],
      porcoes: []),
  Bar(
      id: '3',
      imagem: 'assets/images/bar/bar.jpg',
      nome: 'Bar racuda',
      categorias: ['3'],
      pedidos: ['1', '2'],
      pratosRegionais: ['1'],
      pratosTradicionais: ['2'],
      porcoes: ['1', '2', '3']),
  Bar(
      id: '4',
      imagem: 'assets/images/bar/bar.jpg',
      nome: 'Bar toré',
      categorias: ['1'],
      pedidos: ['1', '2'],
      pratosRegionais: ['1', '2', '3'],
      pratosTradicionais: ['2'],
      porcoes: ['2']),
];

const DUMMY_FARMACIA = const [
  Farmacia(
      id: '1',
      imagem: 'assets/images/farmacia/farmacia.jpg',
      nome: 'Farmacia01',
      categorias: ['1']),
  Farmacia(
      id: '2',
      imagem: 'assets/images/farmacia/farmacia.jpg',
      nome: 'Farmacia02',
      categorias: ['2']),
  Farmacia(
      id: '3',
      imagem: 'assets/images/farmacia/farmacia.jpg',
      nome: 'Farmacia03',
      categorias: ['3']),
  Farmacia(
      id: '4',
      imagem: 'assets/images/farmacia/farmacia.jpg',
      nome: 'Farmacia04',
      categorias: ['4']),
];

const DUMMY_FEIRINHA = const [
  Feirinha(
      id: '1',
      imagem: 'assets/images/feirinha/feirinha.jpg',
      nome: 'Feirinha01',
      categorias: ['1']),
  Feirinha(
      id: '2',
      imagem: 'assets/images/feirinha/feirinha.jpg',
      nome: 'Feirinha02',
      categorias: ['2']),
  Feirinha(
      id: '3',
      imagem: 'assets/images/feirinha/feirinha.jpg',
      nome: 'Feirinha03',
      categorias: ['3']),
  Feirinha(
      id: '4',
      imagem: 'assets/images/feirinha/feirinha.jpg',
      nome: 'Feirinha04',
      categorias: ['4']),
];

const DUMMY_HAMBURGUERIA = const [
  Hamburgueria(
      id: '1',
      imagem: 'assets/images/hamburgueria/hamburgueria.jpg',
      nome: 'Hamburgueria01',
      categorias: ['1']),
  Hamburgueria(
      id: '2',
      imagem: 'assets/images/hamburgueria/hamburgueria.jpg',
      nome: 'Hamburgueria02',
      categorias: ['2']),
  Hamburgueria(
      id: '3',
      imagem: 'assets/images/hamburgueria/hamburgueria.jpg',
      nome: 'Hamburgueria03',
      categorias: ['3']),
  Hamburgueria(
      id: '4',
      imagem: 'assets/images/hamburgueria/hamburgueria.jpg',
      nome: 'Hamburgueria04',
      categorias: ['4']),
];

const LOJADEROUPAS = const [
  LojadeRoupas(
      id: '1',
      imagem: 'assets/images/lojaderoupas/lojaderoupas.jpg',
      nome: 'Loja de Roupas 01',
      categorias: ['1']),
  LojadeRoupas(
      id: '2',
      imagem: 'assets/images/lojaderoupas/lojaderoupas.jpg',
      nome: 'Loja de Roupas 02',
      categorias: ['2']),
  LojadeRoupas(
      id: '3',
      imagem: 'assets/images/lojaderoupas/lojaderoupas.jpg',
      nome: 'Loja de Roupas 03',
      categorias: ['3']),
  LojadeRoupas(
      id: '4',
      imagem: 'assets/images/lojaderoupas/lojaderoupas.jpg',
      nome: 'Loja de Roupas 04',
      categorias: ['4']),
];

const MATERIALDECONSTRUCAO = const [
  MaterialdeConstrucao(
      id: '1',
      imagem: 'assets/images/materialdeconstrucao/materialdeconstrucao.jpg',
      nome: 'Material de Construção 01',
      categorias: ['1']),
  MaterialdeConstrucao(
      id: '2',
      imagem: 'assets/images/materialdeconstrucao/materialdeconstrucao.jpg',
      nome: 'Material de Construção 02',
      categorias: ['2']),
  MaterialdeConstrucao(
      id: '3',
      imagem: 'assets/images/materialdeconstrucao/materialdeconstrucao.jpg',
      nome: 'Material de Construção 03',
      categorias: ['3']),
  MaterialdeConstrucao(
      id: '4',
      imagem: 'assets/images/materialdeconstrucao/materialdeconstrucao.jpg',
      nome: 'Material de Construção 04',
      categorias: ['4']),
];

const PADARIA = const [
  Padaria(
      id: '1',
      imagem: 'assets/images/padaria/padaria.jpg',
      nome: 'Padaria 01',
      categorias: ['1']),
  Padaria(
      id: '2',
      imagem: 'assets/images/padaria/padaria.jpg',
      nome: 'Padaria 02',
      categorias: ['2']),
  Padaria(
      id: '3',
      imagem: 'assets/images/padaria/padaria.jpg',
      nome: 'Padaria 03',
      categorias: ['3']),
  Padaria(
      id: '4',
      imagem: 'assets/images/padaria/padaria.jpg',
      nome: 'Padaria 04',
      categorias: ['4']),
];

const PIZZARIA = const [
  Pizzaria(
      id: '1',
      imagem: 'assets/images/pizzaria/pizzaria.jpg',
      nome: 'Pizzaria 01',
      categorias: ['1']),
  Pizzaria(
      id: '2',
      imagem: 'assets/images/pizzaria/pizzaria.jpg',
      nome: 'Pizzaria 02',
      categorias: ['2']),
  Pizzaria(
      id: '3',
      imagem: 'assets/images/pizzaria/pizzaria.jpg',
      nome: 'Pizzaria 03',
      categorias: ['3']),
  Pizzaria(
      id: '4',
      imagem: 'assets/images/pizzaria/pizzaria.jpg',
      nome: 'Pizzaria 04',
      categorias: ['4']),
];

const QUIOSQUE = const [
  Quiosque(
      id: '1',
      imagem: 'assets/images/quiosque/quiosque.jpg',
      nome: 'Quiosque 01',
      categorias: ['1']),
  Quiosque(
      id: '2',
      imagem: 'assets/images/quiosque/quiosque.jpg',
      nome: 'Quiosque 02',
      categorias: ['2']),
  Quiosque(
      id: '3',
      imagem: 'assets/images/quiosque/quiosque.jpg',
      nome: 'Quiosque 03',
      categorias: ['3']),
  Quiosque(
      id: '4',
      imagem: 'assets/images/quiosque/quiosque.jpg',
      nome: 'Quiosque 04',
      categorias: ['4']),
];

const DUMMY_RESTAURANTE = const [
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

const SALAODEBELEZA = const [
  SalaodeBeleza(
      id: '1',
      imagem: 'assets/images/salaodebeleza/salaodebeleza.jpg',
      nome: 'Salão de Beleza 01',
      categorias: ['1']),
  SalaodeBeleza(
      id: '2',
      imagem: 'assets/images/salaodebeleza/salaodebeleza.jpg',
      nome: 'Salão de Beleza 02',
      categorias: ['2']),
  SalaodeBeleza(
      id: '3',
      imagem: 'assets/images/salaodebeleza/salaodebeleza.jpg',
      nome: 'Salão de Beleza 03',
      categorias: ['3']),
  SalaodeBeleza(
      id: '4',
      imagem: 'assets/images/salaodebeleza/salaodebeleza.jpg',
      nome: 'Salão de Beleza 04',
      categorias: ['4']),
];

const SHOPPING = const [
  Shopping(
      id: '1',
      imagem: 'assets/images/shopping/shopping.jpg',
      nome: 'Shopping 01',
      categorias: ['1']),
  Shopping(
      id: '2',
      imagem: 'assets/images/shopping/shopping.jpg',
      nome: 'Shopping 02',
      categorias: ['2']),
  Shopping(
      id: '3',
      imagem: 'assets/images/shopping/shopping.jpg',
      nome: 'Shopping 03',
      categorias: ['3']),
  Shopping(
      id: '4',
      imagem: 'assets/images/shopping/shopping.jpg',
      nome: 'Shopping 04',
      categorias: ['4']),
];

const SUPERMERCADO = const [
  Supermercado(
      id: '1',
      imagem: 'assets/images/supermercado/supermercado.jpg',
      nome: 'Quiosque 01',
      categorias: ['1']),
  Supermercado(
      id: '2',
      imagem: 'assets/images/supermercado/supermercado.jpg',
      nome: 'Quiosque 02',
      categorias: ['2']),
  Supermercado(
      id: '3',
      imagem: 'assets/images/supermercado/supermercado.jpg',
      nome: 'Quiosque 03',
      categorias: ['3']),
  Supermercado(
      id: '4',
      imagem: 'assets/images/supermercado/supermercado.jpg',
      nome: 'Quiosque 04',
      categorias: ['4']),
];

const List<Map> DUMMY_IMAGES_PRATOS_REGIONAISX = [
  {
    "name": "Baião de dois",
    "image": 'assets/images/pratos/pratos_regionais/baiao-dois-1.jpg',
    "routeName": "1"
  },
  {
    "name": "Carne de Sol",
    "image":
        'assets/images/pratos/pratos_regionais/carnedesol-commacaxeira.jpg',
    "routeName": "2"
  },
  {
    "name": "Peixe Cioba",
    "image": 'assets/images/pratos/peixes/cioba-frito.jpg',
    "routeName": "3"
  },
  {
    "name": "Peixe Cioba",
    "image": 'assets/images/pratos/pratos_regionais/rubacao.jpg',
    "routeName": "3"
  },
  {
    "name": "Peixe Cioba",
    "image":
        'assets/images/pratos/pratos_regionais/carnedesol-comqueijocoalho.jpg',
    "routeName": "3"
  },
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

const List<Map> DUMMY_IMAGES_ROUPAS_SOCIAL = [
  {
    "name": "Calça Social",
    "image": 'assets/images/pratos/peixes/cioba-frito.jpg',
    "routeName": "1"
  },
  {
    "name": "Camisa Social",
    "image": 'assets/images/pratos/pratos_regionais/baiao-dois-1.jpg',
    "routeName": "2"
  },
  {
    "name": "Outra Calça Social",
    "image": 'assets/images/pratos/pratos_regionais/rubacao.jpg',
    "routeName": "3"
  },
];

const List<Map> DUMMY_IMAGES_ROUPAS_RIGOR = [
  {
    "name": "Calça a Rigor",
    "image": 'assets/images/pratos/porcoes/porcoes.jpg',
    "routeName": "4"
  },
  {
    "name": "Camisa a Rigor",
    "image": 'assets/images/pratos/peixes/tilapia-aomolhodealcaparras.jpg',
    "routeName": "5"
  },
  {
    "name": "Smoking",
    "image": 'assets/images/pratos/peixes/tilapia-fileempanado.jpg',
    "routeName": "6"
  },
];
const List<String> DUMMY_IMAGES_ROUPAS_ESPORTE = [
  'assets/images/roupa/esporte/calca.jpg',
  'assets/images/roupa/esporte/camisa.jpg',
];
const List<String> DUMMY_IMAGES_ROUPAS_PRAIA = [
  'assets/images/roupa/praia/sunga.jpg',
  'assets/images/roupa/praia/vestido.jpg',
];
const List<String> DUMMY_IMAGES_ROUPAS_INFANTIL = [
  'assets/images/roupa/infantil/conjunto.jpg',
];
