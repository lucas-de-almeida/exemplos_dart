
import '../lib/animal.dart';
import '../lib/calculo.dart';
import '../lib/calculo1.dart';
import '../lib/calculo2.dart';
import '../lib/cao.dart';
import '../lib/cavalo.dart';
import '../lib/gato.dart';
import '../lib/int_extension.dart';

void main() {
  /* var cao = Cao();
  var gato = Gato();
  var cavalo = Cavalo();

  andar(cao);
  andar(gato);
  andar(cavalo);

  var calculo1 = Calculo1();
  var calculo2 = Calculo2();

  print(calcular(calculo1));
  print(calcular(calculo2)); */

  // extension method
  var texto = "growdev";
  var numero = 5;
  print(numero.toString().padLeft(30, '0'));
  print(texto.padLeft(30, '_'));

  print(numero.dobro());

  print(numero.dobroStringFormatado());

  var cavalo2 = Cavalo();
  print(cavalo2.retornarNome());

  var nomeCavalo = 'Crioulo';
  var cavalo3 = nomeCavalo.retornarCavalo();
  print(cavalo3.retornarNome());

  var cpf = 917341007;
  print(cpf.cnpjCpf());

  var cnpj = 89531791000190;
  print(cnpj.cnpjCpf());
}

void andar(Animal animal) {
  animal.andar();
  animal.teste();
}

double calcular(Calculo calculo) {
  return calculo.calcular();
}
