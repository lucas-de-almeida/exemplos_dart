void main() {

  if (isPrime(100000)) {
    print('eh primo !!!!');
  } else {
    print('nao eh primo !!!!');
  }
  return;

  // retorno nome(parametros) => escopo
  print(semTipagem(5));

  // receber um numero - escrever a tabuada
  tabuada(9);

  // parametros opcionais
  // nomeados
  print(parametrosNomeadosOpcionais(a: 100));
  // posicionais
  print(parametrosPosicionaisOpcionais(null, null, 99));

  var somar = (int a, int b) {
    var c = a * 2;
    var d = b * 2;
    return c + d;
  };

  var somarArrow = (int a, int b) => a + b;

  var resultado = somar(2, 4);
  print(resultado);

  var resultadoArrow = somarArrow(2, 4);
  print(resultadoArrow);

  recebendoFuncoes(resultado: recebiNumero);

  // receber 2 numeros do usuario
  // fazer a media dos 2 numeros 
  // passar para uma funcao os 2 numeros e mais 2 funcoes (1. reprovou, 2. passou)
  //   reprovou < 60
  //   passou >= 60

  media(70, 70, () => print('reprovou'), () => print('passou'));
}

void media(int a, int b, void Function() reprovou, void Function() passou) {
  var valor = (a + b) ~/ 2;
  if (valor < 60 && reprovou != null) {
    reprovou();
  } 
  if (valor >= 60 && passou != null) {
    passou();
  }
}

void recebiNumero(int numero) {
  print('recebi da funcao $numero, value aeww!');
}

void recebendoFuncoes({void Function(int) resultado}) {
  for (var i = 0; i < 100; i++) {
    if (i % 2 == 0) {
      if (resultado != null) {
        resultado(i);
      }
    }
  }
}

int parametrosNomeadosOpcionais({int a, int b = 50, int c = 100}) {
  return (a ?? 0) + (b ?? 0) + (c ?? 0);
}

int parametrosPosicionaisOpcionais([int a, int b = 50, int c = 100]) {
  return (a ?? 0) + (b ?? 0) + (c ?? 0);
}

void semRetorno() {
  return;
}

bool isPrime(int numero) {
  if(numero <= 1) return false;
  if (numero == 2) return true;
  if (numero % 2 == 0) return false;
  for(var i = 3; i < (numero ~/ 2); i++) {
    if (numero % i == 0) {
      return false;
    }
  }
  return true;
}

bool isPrime2(int numero) {
  if(numero <= 1) return false;
  for(var i = 2; i <= (numero ~/ 2); i++) {
    if (numero % i == 0 && numero != 2) {
      return false;
    }
  }
  return true;
}

semTipagem(parametro) {
  return parametro + 1;
}

void tabuada(int numero) {
  for (var i = 1; i <= 10; i++) {
    print('$numero * $i = ${numero * i}');
  }
}

int tabuadaComRetornoComArrow(int numero, int fator) => numero * fator;

int tabuadaComRetornoSemArrow(int numero, int fator) {
  return numero * fator;
}

void arrowFunctionSemRetorno() => print('sem retorno');
