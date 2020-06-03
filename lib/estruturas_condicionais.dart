import 'dart:io';

void main() {
  // expressao condicional
  var condicao = (1 == 1) ? 'verdadeiro' : 'falso';
  int valor1 = null;
  int valor2 = 10;
  var valor = valor1 ?? valor2;
  print(valor);

  // conversao de string to int
  var convertido = int.tryParse('10');
  if (convertido == null) {
    print('não converteu');
  } else {
    print('converteu para $convertido');
  }

  // if
  var nome = 'evandro';
  var nome2 = 'edson';

  if (nome == nome2) {
    print('faz tal coisa');
  } else if (nome.length > 5) {
    print('o nome é maior que 5');
  } else if (nome.length > 10) {
    print('o nome é maior que 10');
  } else if (nome.length > 15) {
    print('o nome é maior que 15');
  } else {
    print('nao importa o tamanho');
  }
  // atividade IF 
  print('entre com o numero A: ');
  var numeroA = int.tryParse(stdin.readLineSync()) ?? 0;

  print('entre com o numero B: ');
  var numeroB = int.tryParse(stdin.readLineSync()) ?? 0;

  if (numeroB > 0) {
    if ((numeroA % numeroB) == 0) {
      print('é divisivel');
    } else {
      print('não é divisivel');
    }
  } else {
    print('entrada invalida');
  } 

  // switch
  stdout.writeln('1. para cadastrar');
  stdout.writeln('2. para consultar');
  stdout.writeln('3. para excluir');
  stdout.writeln('4. para editar');

  var opcao = int.tryParse(stdin.readLineSync()) ?? 0;

  switch (opcao) {
    case 1:
      {
        print('opção de cadastro');
        break;
      }
    case 2:
      {
        print('opção de consulta');
        break;
      }
    case 3:
      {
        print('opção de excluir');
        break;
      }
    case 4:
      {
        print('opção de editar');
        break;
      }
    default:
      {
        print('entrada invalida');
      }
  }

  // atividade switch
  // é hora de treinar !!!!
  // entrada de 2 valores
  // entrada da operação matematica (+, -, *, /)
  // [valor1] [operacao] [valor2] = [resultado]

  stdout.writeln('Entre o valor A');
  var valorA = int.tryParse(stdin.readLineSync()) ?? 0;
  stdout.writeln('Entre o valor B');
  var valorB = int.tryParse(stdin.readLineSync()) ?? 0;
  stdout.writeln('Defina uma operacao (+, -, *, /)');
  var operacao = stdin.readLineSync();

  switch (operacao) {
    case '+':
      {
        print('$valorA $operacao $valorB = ${valorA + valorB}');
        break;
      }
    case '-':
      {
        print('$valorA $operacao $valorB = ${valorA - valorB}');
        break;
      }
    case '*':
      {
        print('$valorA $operacao $valorB = ${valorA * valorB}');
        break;
      }
    case '/':
      {
        print('$valorA $operacao $valorB = ${valorA / valorB}');
        break;
      }
    default:
      {
        print('operação inválida');
      }
  }
}
