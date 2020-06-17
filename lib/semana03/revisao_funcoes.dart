import 'dart:io';

void main(List<String> arguments) {
  // String entrada = lerEntrada();
  // print('O que o Edson digitou? ');
  // print(entrada);

  // numeros.forEach(mostrarNumero);
}

// tipoDeRetorno nomeDaFuncao(tipoDoParametro parametro){}
void mostrarNumero(int numero) {
  print(numero);
}

String lerEntrada() {
  print('Digite alguma coisa');
  var entrada = stdin.readLineSync();
  return entrada;
}

double calcular(int divisor) {
  var entrada = int.tryParse(stdin.readLineSync());
  var resultado = entrada / divisor;
  return resultado;
}
