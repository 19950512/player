import 'personagem/item.dart';
import 'personagem/player.dart';
import 'vocacoes/guerreiro_implementation.dart';
import 'vocacoes/mage_implementation.dart';

void main() {
  int experiencia = 100;

  Item orbe = Item(nome: 'Orbe de Mithril', ataque: 220, defesa: 10);
  Item mascara = Item(nome: 'Mascara de Mithril', ataque: 0, defesa: 120);
  Item montante = Item(nome: 'Montante de Mithril', ataque: 460, defesa: 220);

  Player maguinho = Player(
    nome: 'Heitor',
    sexo: 'Masculino',
    habilidades: MageImplementation(),
  );
  maguinho.addItem(orbe);
  maguinho.addItem(orbe);
  maguinho.addItem(mascara);

  print('######### Mage #########');
  maguinho.experience = experiencia;
  maguinho.informacoes();

  print("\r\r\r\r\r\r");

  Player guerreiro = Player(
    nome: 'Rita',
    sexo: 'Feminino',
    habilidades: GuerreiroImplementation(),
  );

  guerreiro.addItem(montante);

  print('######### Guerreiro #########');
  guerreiro.experience = experiencia;
  guerreiro.informacoes();
}
