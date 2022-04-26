abstract class IItem {
  void ativo();
  void passiva();
}

class Item implements IItem {
  String nome;
  int ataque;
  int defesa;
  Item({
    required this.nome,
    required this.ataque,
    required this.defesa,
  });

  @override
  void ativo() {}

  @override
  void passiva() {}
}
