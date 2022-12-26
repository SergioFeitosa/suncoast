class Bar {
  final String id;
  final String imagem;
  final String nome;
  final List<String> pedidos;
  final List<String> categorias;
  final List<String> pratosRegionais;
  final List<String> pratosTradicionais;
  final List<String> porcoes;

  const Bar({
    required this.id,
    required this.imagem,
    required this.nome,
    required this.pedidos,
    required this.categorias,
    required this.pratosRegionais,
    required this.pratosTradicionais,
    required this.porcoes,
  });
}
