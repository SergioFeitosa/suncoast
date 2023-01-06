class AlugueldeRoupas {
  final String id;
  final String imagem;
  final String nome;
  final List<String> pedidos;
  final List<String> categorias;
  final List<String> social;
  final List<String> rigor;
  final List<String> esporte;

  const AlugueldeRoupas({
    required this.id,
    required this.imagem,
    required this.nome,
    required this.pedidos,
    required this.categorias,
    required this.social,
    required this.rigor,
    required this.esporte,
  });
}
