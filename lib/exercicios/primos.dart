void main() {
  var entrada = 500;
  for (var i = 0; i < entrada; i++) {
    if (ehPrimo(i)) {
      print(i);
    }
  }
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
