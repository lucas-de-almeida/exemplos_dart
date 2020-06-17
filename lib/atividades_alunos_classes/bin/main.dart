import '../lib/aluno.dart';
import '../lib/pessoa.dart';
import '../lib/turma.dart';

void main() {
  Aluno aluno = Aluno(Pessoa('Edson', 22));

  Turma growDev = Turma();

  print(growDev.media > 4 ? 'Turma top' : 'Turma ruim');
}
