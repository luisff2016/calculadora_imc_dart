class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;
  double _imc = 0;

  getNome() {
    return _nome;
  }

  setNome(String nome) {
    _nome = nome;
  }

  getPeso() {
    return _peso;
  }

  setPeso(double peso) {
    _peso = peso;
  }

  getAltura() {
    return _altura;
  }

  setAltura(double altura) {
    _altura = altura;
  }

  getIMC() {
    return _imc;
  }

  setIMC() {
    _imc = _peso / (_altura * _altura);
  }

  String calcularIMC() {
    switch (_imc) {
      case < 16:
        return "Magreza grave";
      case < 17:
        return "Magreza moderada";
      case < 18.5:
        return "Magreza leve";
      case < 25:
        return"Saudável";
      case < 30:
        return"Sobrepeso";
      case < 35:
        return"Obesidade Grau I";
      case < 40:
        return"Obesidade Grau II (severa)";
      default:
        return"Obesidade Grau III (mórbida)";
    }
  }

  @override
  String toString() {
    return {'Nome': _nome, "Peso": _peso, "Altura": _altura, "IMC": _imc}
        .toString();
  }
}
