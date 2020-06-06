void main() {
  int multiplos3e5() {
    var resultado = 0;
    for (var i = 1; i < 1000; i++) {
      if ((i % 3) == 0 || (i % 5) == 0) {
        resultado += i;
      }
    }
    return resultado;
    // resultado esperado 233168
  }
}
