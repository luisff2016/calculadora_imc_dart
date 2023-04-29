import 'package:calculadora_imc/classes/pessoa.dart';

void main(List<String> args) {

  var calc1 = Pessoa();

  calc1.setNome("Fernando");
  calc1.setPeso(118.9);
  calc1.setAltura(1.67);
  calc1.setIMC();
  print(calc1.toString());
  print(calc1.calcularIMC());
}
