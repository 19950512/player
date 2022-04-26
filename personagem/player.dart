import 'habilidades_interface.dart';
import 'item.dart';
import 'propriedades.dart';

class Player {
  String nome;
  String sexo;
  IHabilidade habilidades;
  late Propriedades propriedades;
  final List<Item> _listItems = [];
  Player({
    required this.nome,
    required this.sexo,
    required this.habilidades,
  }) {
    this.propriedades = Propriedades(this.habilidades);
  }

  get items => _listItems;
  void addItem(Item item) {
    _listItems.add(item);
  }

  void informacoes() {
    //print("Nome: ${nome}");
    // print("Sexo: ${sexo}");
    print("HP: ${propriedades.hp}");
    print("Mana: ${propriedades.mana}");
    print("Level: ${propriedades.level}");
    print("Defesa: ${propriedades.defesa}");
    print("Exp: ${propriedades.getExp}");
    print("Items:");
    for (Item item in items) {
      print(" - ${item.nome}, atk: ${item.ataque}, def: ${item.defesa}");
    }
    /*  print("Attk: ${habilidades.autoAtaque().toString()}");
    print("AutoAtaque: ${habilidades.autoAtaque()}");
    print("Principal: ${habilidades.principal()}");
    print("Secundaria: ${habilidades.secundaria()}"); */
  }

  set experience(int exp) {
    propriedades.exp = propriedades.getExp + exp;
  }
}
