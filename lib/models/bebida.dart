class Bebida {
  final String id;
  final String nome;
  final String imagem;
  final String descricao;
  final double preco;
  final List ingredientes;
  final List<String> categorias;

  const Bebida({
    required this.id,
    required this.nome,
    required this.imagem,
    required this.descricao,
    required this.preco,
    required this.ingredientes,
    required this.categorias,
  });
}
