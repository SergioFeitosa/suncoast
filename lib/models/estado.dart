class Estado {
  final String id;
  final String bandeira;
  final String sigla;
  final String nome;
  final int populacao;
  final int temperaturaMediaVerao;
  final int temperaturaMediaInverno;
  final List<String> cidades;

  const Estado({
    required this.id,
    required this.bandeira,
    required this.sigla,
    required this.nome,
    required this.populacao,
    required this.temperaturaMediaVerao,
    required this.temperaturaMediaInverno,
    required this.cidades,
  });
}
