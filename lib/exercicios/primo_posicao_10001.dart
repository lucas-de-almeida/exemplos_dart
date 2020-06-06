void main() {
  var numero = 2;
  var posicao = 0;

  while (true) {
    if (ehPrimo(numero)) {
      posicao++;
    }

    if (posicao == 10001) {
      break;
    }

    numero++;
  }

  print('Posicao: ${posicao}');
  print('Primo da posição ${numero}');
}

bool ehPrimo(int numero) {
  if (numero == 1) return false;
  if (numero == 2) return true;
  if ((numero % 2) == 0) return false;
  for (var i = 3; i < (numero ~/ 2); i++) {
    if ((numero % i) == 0) {
      return false;
    }
  }
  return true;
}
