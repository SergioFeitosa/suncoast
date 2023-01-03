class Pedido {
  final String id;
  final String local;
  final List itens;
  final String horaPedido;
  final String horaEntrega;
  final String telefone;
  final String quantidade;

  const Pedido({
    required this.id,
    required this.local,
    required this.itens,
    required this.horaPedido,
    required this.horaEntrega,
    required this.telefone,
    required this.quantidade,
  });
}
