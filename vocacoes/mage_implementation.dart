import '../personagem/habilidades_interface.dart';

class MageImplementation implements IHabilidade {
  int _danobase = 20;
  int _inteligencia = 100;
  int _forca = 10;
  double _defesa = 13;

  double _multiplicador = 3;

  double get multiplicador => _multiplicador;

  @override
  double autoAtaque() {
    return _numero(_danobase * _forca / _multiplicador + 3);
  }

  @override
  double principal() {
    return _numero(_danobase * _inteligencia / _multiplicador * .5);
  }

  @override
  double secundaria() {
    return _numero(_danobase * _inteligencia / _multiplicador * .3);
  }

  double _numero(double numero) {
    return num.parse(numero.toStringAsFixed(2)).toDouble();
  }

  @override
  int hpPorLevel = 5;

  @override
  int manaPorLevel = 13;

  @override
  int danoBasePorLevel = 5;

  @override
  int defesaPorLevel = 2;

  @override
  double get defesa => _defesa;
}
