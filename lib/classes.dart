void main() {
  var pessoa = Pessoa();
  var pessoa1 = new Pessoa();
  var nome = 'Evandro';
  var idade = 0;

  pessoa?.nome = 'Evandro';
  pessoa?.idade = 33;

  var nomeNaPessoa = pessoa?.nome ?? 'nao definido';

  var caozin = Cao('Tobi')..idade = 1;

  int numero = 0;

  print('Eu me chamo ${pessoa?.nome} e tenho ${pessoa.idade} anos');

  print('O meu câo se chama ${caozin?.nome} e tem ${caozin.idade} anos');

  var novoCao = Cao('Tobi');
  novoCao.idade = 1;
  novoCao.latir();
  novoCao.trocarNome('Robson');

  novoCao.fazerAniversario();

  var maisUm = Cao('Jão');
  print('O meu câo se chama ${maisUm?.nome} e tem ${maisUm.idade} anos');

  var mapAPI = {'NomeDoCao': 'Tobias', 'IdadeDoCao': 10, 'QuantasPatas': 4};

  var maisUm2 = Cao.fromMap(mapAPI);

  print(
      'Nome: ${maisUm2.nome}, Idade: ${maisUm2.idade}, Patas: ${maisUm2.patas}');

  var cao2 = Cao.maisUmConstrutor('tobi', 1);
  print('Nome: ${cao2.nome}, Idade: ${cao2.idade}, Patas: ${cao2.patas}');

  var cao3 = Cao.agoraComThis('tobinho', 3);
  print('Nome: ${cao3.nome}, Idade: ${cao3.idade}, Patas: ${cao3.patas}');

  var aula = Aula();

  var evandro = Pessoa()..nome = 'Evandro';
  var edson = Pessoa();
  edson.nome = 'Edson';
  var evandro2 = Pessoa()..nome = 'Evandro';

  aula.adicionarAluno(evandro);
  aula.adicionarAluno(edson);
  aula.adicionarAluno(evandro);
  aula.adicionarAluno(evandro);
  aula.adicionarAluno(evandro2);
}

class Pessoa {
  String nome;
  int idade;
}

class Cao {
  String nome = '';
  int idade = 0;
  int _patas = 4;

  int get patas => _patas;
  void set patas(int value) {
    if (value <= 4 && value > 0) {
      _patas = value;
    }
  }

  Cao(String nome, {int idade}) {
    this.nome = nome;
    this.idade = idade ?? 0;
  }

  Cao.vazio();

  Cao.fromMap(Map<String, dynamic> map) {
    nome = map['NomeDoCao'];
    idade = map['IdadeDoCao'];
    _patas = map['QuantasPatas'];
  }

  Cao.maisUmConstrutor(String nome, int idade) {
    this.nome = nome;
    this.idade = idade;
  }

  Cao.agoraComThis(this.nome, this.idade);

  void latir() {
    print('O cachorro ${nome ?? 'sem nome'} latiu!');
  }

  void trocarNome(String nome) {
    print('O cão trocou o nome de ${this.nome} para $nome');
    this.nome = nome;
  }

  void fazerAniversario() {
    idade = (idade ?? 0) + 1;
    print('O cão $nome fez $idade anos! Parabéns!');
  }
}

class Aula {
  Pessoa mentor;
  List<Pessoa> alunos;
  int media;

  Aula() {
    media = 6;
    alunos = <Pessoa>[];
  }

  void adicionarAluno(Pessoa aluno) {
    /* var temNaLista = alunos.where((a) => a.nome == aluno.nome);
    if (temNaLista.isEmpty) {
      alunos.add(aluno);
    } */

    /* var tem = alunos.any((a) => a.nome == aluno.nome);
    if (!tem) {
      alunos.add(aluno);
    } */

    if (alunos?.isNotEmpty ?? false) {
      var tem =
          alunos.firstWhere((a) => a.nome == aluno.nome, orElse: () => null);
      if (tem == null) {
        alunos.add(aluno);
      }
    } else {
      alunos.add(aluno);
    }

    /*  alunos.contains(aluno); */

    print(alunos.map((a) => a.nome));
  }
}
