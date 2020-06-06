import 'dart:io';

void main() {
  var numero = '123';
  var numeroReverso = '';

  for (var i = numero.length - 1; i >= 0; i--) {
    numeroReverso += numero[i];
  }

  print(numeroReverso);
}
