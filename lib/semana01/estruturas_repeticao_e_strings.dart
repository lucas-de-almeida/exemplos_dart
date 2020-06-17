import 'dart:io';

void main() {
  // for
  print('comecou');
  for (var j = 0; j < 10; j++) {
    print('J é isso aqui $j');
    for (var i = 0; i < 100; i++) {
      print('to no $i');
      if (i == 47) {
        print('breakou!');
        break;
      }
      if ((i % 3) == 0) {
        print('continuou');
        continue;
      }
      print('fim');
    }
  } 

  // while and do while
  var numero = 0;
  var embaralhada = '';
  var palavra = 'qualquer coisa';
  while (embaralhada.length != palavra.length) {
    if (numero >= 1000) {
      break;
    }
    numero++;
  }
  do {
    print('laço com do while');
    numero++;
  } while (numero < 1000); 

  // forEach exemplo (um plus a mais)
  var lista = List<int>();
  lista.addAll([1, 2, 3, 4, 5, 6, 7, 8]);
  lista.add(9);
  lista.forEach((item) => funcaoTeste(item));

  // atividade de laços !
  /// ler 3 numeros maiores que 10 e devolver a media
  var numeroAtual = 1;
  var total = 0;
  var cancelado = false;
  while (numeroAtual <= 3) {
    stdout.write(
        'digite o numero $numeroAtual maior que 10 (ou c para cancelar):');
    var entrada = stdin.readLineSync();
    cancelado = entrada.trim().toLowerCase() == 'c';
    if (cancelado) {
      break;
    }
    var numero = int.tryParse(entrada);
    if (numero != null && numero > 10) {
      total += numero;
      numeroAtual++;
    } else {
      stdout.writeln('opppsss !! valor inválido!!');
    }
  }
  if (!cancelado) {
    stdout.writeln('A média é: ${total ~/ 3}');
  }
 
  
}

// exemplo de funcao usada no forEach
void funcaoTeste(int item) {
  var teste = item * 10;
  print(teste);
}

// metodo sobre strings 
void trabalhandoComStrings() {
  var nome = 'growdev advanced'; // 7
  var nova = '';

  // usando build-in functions do Dart
  var nomeSplited = nome.split('');
  nomeSplited.shuffle();
  var embaralhada = nomeSplited.join('');
  print(embaralhada);

  // acessar posicoes do string
  for(var i = nome.length -1; i >= 0; i --) {
    nova += nome[i];
  }
  print(nova);
}
