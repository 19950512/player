import '../personagem/habilidades_interface.dart';

class GuerreiroImplementation implements IHabilidade {
  int _danobase = 25;
  int _inteligencia = 10;
  int _forca = 20;
  double _defesa = 23;

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
  int hpPorLevel = 17;

  @override
  int manaPorLevel = 6;

  @override
  int danoBasePorLevel = 3;

  @override
  int defesaPorLevel = 3;

  @override
  double get defesa => _defesa;
}
