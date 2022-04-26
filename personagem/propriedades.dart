import 'habilidades_interface.dart';

class Propriedades {
  int _hp = 100;
  int _mana = 100;
  int _exp = 0;
  int _level = 1;
  double _defesa = 0;
  int _defesaPorLevel = 1;
  int _hpPorLevel = 1;
  int _manaPorLevel = 1;
  int forca;
  int inteligencia;
  int distancia;
  double _multiplicador = 2.75;

  final IHabilidade _habilidade;

  Propriedades(
    this._habilidade, {
    this.forca = 0,
    this.inteligencia = 0,
    this.distancia = 0,
  }) {
    _multiplicador = _habilidade.multiplicador;
    _hpPorLevel = _habilidade.hpPorLevel;
    _manaPorLevel = _habilidade.manaPorLevel;
    _defesa = _habilidade.defesa;
    _defesaPorLevel = _habilidade.defesaPorLevel;
  }

  get hp => _hp;
  get mana => _mana;
  get level => _level;
  int get getExp => _exp;
  set multiplicador(double numero) => _multiplicador = numero;
  double get multiplicador => _multiplicador;
  double get defesa => _defesa;

  set exp(int experience) {
    _exp = experience;

    for (int level = 1; level <= 9999; level++) {
      if (_exp >= experienceLevel(_level) &&
          _exp <= experienceLevel(_level + level)) {
        _upLevel(level);
      }
    }
  }

  // Retorna o número de experiência necessária para o level X
  double experienceLevel(int levelX) {
    return ((50 * levelX - 150 * levelX + 400 * levelX) / 3);
  }

  void _upLevel(int level) {
    int hpInicial = 0;
    int manaInicial = 0;
    if (_hp >= 100) {
      hpInicial = 100;
      manaInicial = 100;
    }
    this._hp = hpInicial + (_hpPorLevel * level).toInt();
    this._mana = manaInicial + (_manaPorLevel * level).toInt();
    this._defesa = (_defesaPorLevel * level).toDouble();
    this._level = level;
  }
}
