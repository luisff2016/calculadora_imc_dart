import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group("Calcular IMC", () {
    var calc1 = Pessoa();

    calc1.setNome("Fernando");
    calc1.setPeso(118.9);
    calc1.setAltura(1.67);
    calc1.setIMC();
    test('mostrar nome: ', () {
      expect(calc1.getNome().toString().toUpperCase(),
          "fernando".toUpperCase());
    });

     test('mostrar peso: ', () {
      expect(
          calc1.getPeso(), 118.9);
    });

     test('mostrar alturas: ', () {
      expect(calc1.getAltura(), 1.67);
    });

      test('mostrar imc: ', () {
      expect(calc1.getIMC(), 42.633296281688125);
    });

    test('resultado do imc: ', () {
      expect(calc1.calcularIMC(), "Obesidade Grau III (mórbida)");
    });
  });
}
