/*

Crie uma lista de Map de alunos (5 ou mais) que tenha as seguintes propriedades: Nome, idade, nota e status.

Dado o seguinte gabarito de uma prova:

gabarito: ['A', 'C', 'D', 'C, 'B', 'C', 'A', 'B', 'B', 'A']

Percorra cada aluno, e faça cada aluno preencher uma lista de resposta de mesma quantidade que o gabarito. A resposta deve ser totalmente aleatória.
Para cada resposta correta, o aluno ganha 1 ponto.

Depois de lido as resposta de cada aluno e ter comparado com o gabarito, atualize o status dos alunos para APROVADO caso a nota seja maior ou igual a 4 ou REPROVADO caso seja menor que 4

No final do programa mostre o seguinte resultado

Média das nota dos aluno
Aluno que tirou a maior nota
Aluno que tirou a menor nota
Uma lista com os alunos aprovados
Uma lista com os alunos reprovados */

import 'dart:math';

void main(List<String> arguments) {
  var gabarito = <String>['A', 'C', 'D', 'C', 'B', 'C', 'A', 'B', 'B', 'A'];
  var lista = [
    {'nome': 'Evandro', 'idade': 33, 'nota': 0, 'status': ''},
    {'nome': 'Edson', 'idade': 24, 'nota': 0, 'status': ''},
    {'nome': 'Marcelo', 'idade': 31, 'nota': 0, 'status': ''},
    {'nome': 'Jéssica', 'idade': 20, 'nota': 0, 'status': ''},
    {'nome': 'Miguel', 'idade': 20, 'nota': 0, 'status': ''},
    {'nome': 'Eduardo Lima', 'idade': 20, 'nota': 0, 'status': ''},
    {'nome': 'Eduardo Rodrigues', 'idade': 20, 'nota': 0, 'status': ''},
    {'nome': 'Gesiel', 'idade': 20, 'nota': 0, 'status': ''},
    {'nome': 'Lucas', 'idade': 20, 'nota': 0, 'status': ''},
    {'nome': 'Luis', 'idade': 20, 'nota': 0, 'status': ''},
    {'nome': 'Nicolas', 'idade': 20, 'nota': 0, 'status': ''},
  ];

  // random de notas
  lista.forEach((aluno) {
    aluno['prova'] = <String>[];
    var nota = 0;
    for (var i = 0; i < gabarito.length; i++) {
      (aluno['prova'] as List).add(retornarNota());
      var posicaoGabarito = gabarito[i];
      var respostaAluno = (aluno['prova'] as List)[i];
      if (posicaoGabarito == respostaAluno) {
        nota++;
      }
    }
    aluno.update('nota', (value) => nota);
    aluno.update('status', (value) => nota >= 4 ? 'APROVADO' : 'REPROVADO');
  });

  /*  // calcular a nota
  lista.forEach((aluno) {
    var nota = 0;
    for (var i = 0; i < gabarito.length; i++) {
      var posicaoGabarito = gabarito[i];
      var respostaAluno = (aluno['prova'] as List)[i];
      if (posicaoGabarito == respostaAluno) {
        nota++;
      }
    }
    aluno.update('nota', (value) => nota);
  }); */

  // calcular o status
  /* for (var aluno in lista) {
    aluno.update('status',
        (value) => (aluno['nota'] as int) >= 4 ? 'APROVADO' : 'REPROVADO');
  } */

  // media
  /*
    var notas = 0;
    for (var aluno in lista) {
      notas += (aluno['nota'] as int);
    } 
    var media = notas / lista.length;
  */
  var notas = lista
      .map((aluno) => aluno['nota'] as int)
      .reduce((value, element) => value + element);
  var media = notas / lista.length;

  // maior nota
  var maiorNota = lista.reduce((alunoTheBest, aluno) {
    if ((alunoTheBest['nota'] as int) < (aluno['nota'] as int)) {
      alunoTheBest = aluno;
    }
    return alunoTheBest;
  });
  // menor nota
  var menorNota = lista.reduce((alunoTheBad, aluno) {
    if ((alunoTheBad['nota'] as int) > (aluno['nota'] as int)) {
      alunoTheBad = aluno;
    }
    return alunoTheBad;
  });

  // alunos aprovados e reprovados
  var aprovados = lista
      .where((aluno) => aluno['status'].toString() == 'APROVADO')
      .map((e) => e['nome'].toString());
  var reprovados = lista
      .where((aluno) => aluno['status'].toString() == 'REPROVADO')
      .map((e) => e['nome'].toString());
  ;
  print('--------------------------------------------');
  print('A média geral é : $media');
  print('O aluno com a maior nota é: $maiorNota');
  print('O aluno com a menor nota é: $menorNota');
  print('Os alunos aprovados são: $aprovados');
  print('Os alunos reprovados são: $reprovados');
}

String retornarNota() {
  var possibilidades = <String>['A', 'B', 'C', 'D'];
  var random = Random();
  return possibilidades[random.nextInt(possibilidades.length)];
}
