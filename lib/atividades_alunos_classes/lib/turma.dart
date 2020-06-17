import 'aluno.dart';

class Turma {
  List<Aluno> alunos;

  double get media => _calcularMediaDaTurma();
  double get total => _calcularTotalDasNotas();

  Turma() {
    alunos = [];
  }

  void adicionarAluno() {}

  double _calcularMediaDaTurma() {
    var total = _calcularTotalDasNotas();
    var media = total / alunos.length;
    return media;
  }

  double _calcularTotalDasNotas() {
    var total =
        alunos.map((aluno) => aluno.nota).reduce((total, nota) => total + nota);
    return total;
  }

  List<Aluno> listaDeAlunosAprovados() {
    var aprovados = alunos.where((aluno) => aluno.status == 'Aprovado');
    return aprovados;
  }

  List<Aluno> listaDeAlunosReprovados() {}

  Aluno melhorAluno() {}

  Aluno piorAluno() {}
}
