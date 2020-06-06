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
      'Situacao': 'Não definido',
      'Nota': 5,
    },
    {
      'Nome': 'Evandro',
      'Idade': 53,
      'Situacao': 'Não definido',
      'Nota': 8,
    },
    {
      'Nome': 'Marcelo',
      'Idade': 62,
      'Situacao': 'Não definido',
      'Nota': 0,
    },
  ];

  var listaDeNotas = alunos.map((aluno) => (aluno['Nota'] as int)).toList();

  var total = listaDeNotas.reduce((total, nota) => total + nota);

  var media = total / alunos.length;

  print(media.toStringAsFixed(2));
}
