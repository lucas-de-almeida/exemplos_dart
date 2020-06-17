void main() {
  var aluno = {
    'Nome': 'Edson',
    'Idade': 22,
    'Status': 'Não definido',
    'Notas': [
      8,
      10,
    ],
  };

  // aluno.keys.forEach((key) {
  //   print(key);
  // });

  // print('----------------');

  // for (var key in aluno.keys) {
  //   print(aluno[key]);
  // }

  // print('----------------');

  // for (var value in aluno.values) {
  //   print(value);
  // }

  // aluno.addAll({'Mentor': true, 'Nome': 'Evandro'});

  // (aluno['Notas'] as List)[0] = 2;
  // print(aluno);

  var alunos = [
    {
      'Nome': 'Edson',
      'Idade': 22,
      'Situacao': 'Aprovado',
      'Nota': 5,
    },
    {
      'Nome': 'Evandro',
      'Idade': '53',
      'Situacao': 'Aprovado',
      'Nota': 8,
    },
    {
      'Nome': 'Marcelo',
      'Idade': 62.21,
      'Situacao': 'Reprovado',
      'Nota': 0,
    },
  ];

  // var aprovados = alunos
  //     .where((aluno) => aluno['Idade'] is int)
  //     .map((aluno) => aluno['Nome']);

  // var listaDeNotas = alunos.map((aluno) => (aluno['Nota'] as int)).toList();

  // var total = listaDeNotas.reduce((total, nota) => total + nota);

  // var media = total / alunos.length;

  // aluno.removeWhere((key, value) {
  //   if (key == 'Idade') {
  //     return true;
  //   }
  //   return false;
  // });

  aluno.addAll({'Idade': 22});

  aluno.addEntries([MapEntry('Tem carro?', true)]);

  aluno.update('Qualquer', (value) => 24, ifAbsent: () => 30);

  aluno.putIfAbsent('Qualquer 2', () => 'Qualquer');

  aluno.putIfAbsent('Idade', () => 45);

  print(aluno.containsKey('sadasdsa'));

  print(aluno);
}
