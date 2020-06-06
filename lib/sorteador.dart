import 'dart:math';

void main() {
  var devs2 = [
    'Andrei',
    'Carol',
    'Cristian',
    'Eduardo Lima',
    'Eduardo Rodrigues',
    'Gesiel',
    'Henrique',
    'Jessica',
    'Lucas',
    'Luis',
    'Marcelo',
    'Miguel',
    'Nicolas'
  ];

  print('O sorteado foi: ${devs2[Random.secure().nextInt(devs2.length)]}');
}
