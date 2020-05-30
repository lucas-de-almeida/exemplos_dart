import 'dart:math';
import 'dart:io';

main() {
  // variaveis
  String nome = 'Édson';
  int idade = 22;
  double altura = 1.68;
  bool mentor = true;

  dynamic qualquer = '123';
  qualquer = true;

  var sobrenome = 'Martins';

  const url = 'http://google.com';

  final pi = 3.1416;

  // operadores e concatenação

  /*
    concatenação de string
    operadores aritmeticos
  */

  var nomeCompleto = '$nome $sobrenome, $idade, é mentor: $mentor';

  var nomeCompleto2 = '''
    $nome,
    $sobrenome,
    $idade
  ''';

  var nomeCompleto3 = '$nome '
      '$sobrenome';

  // operadores

  var soma = 25 + 15;
  print('soma $soma');

  var multiplicacao = 25 * 15;
  print('multiplicacao $multiplicacao');

  var divisao = 25 / 15;
  print('divisao $divisao');

  var substracao = 25 - 15;
  print('substracao $substracao');

  var restoDivisao = 25 % 2;
  print('restoDivisao $restoDivisao');

  var operao = 5 * (5 + 4);
  print('operacao $operao');

  // exercicio

  var pesoImc = 86;
  var alturaImc = 1.79;

  var imc = pesoImc / (alturaImc * alturaImc);
  var imc2 = pesoImc / pow(alturaImc, 2);
  var raizQuadra = sqrt(81);

  print('imc: $imc');
  print('imc2: $imc2');
  print('raiz quadrada $raizQuadra');

  stdout.write('Digite uma palavra: ');

  var entrada = stdin.readLineSync();
  print('entrada do usuário: $entrada');
}
