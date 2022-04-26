abstract class IHabilidade {
  double autoAtaque();
  double principal();
  double secundaria();

  double _multiplicador = 2.3;
  double _defesa = 2.3;
  int hpPorLevel = 10;
  int manaPorLevel = 10;
  int defesaPorLevel = 10;
  int danoBasePorLevel = 10;

  double get multiplicador => _multiplicador;
  double get defesa => _defesa;
}
