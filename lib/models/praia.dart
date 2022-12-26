class Praia {
  final String id;
  final String imagem;
  final String nome;
  final int temperatura;
  final List<String> tipoEstabelecimentos;
  final List<String> bares;
  final List<String> restaurantes;

  const Praia({
    required this.id,
    required this.imagem,
    required this.nome,
    required this.temperatura,
    required this.tipoEstabelecimentos,
    required this.bares,
    required this.restaurantes,
  });
}
