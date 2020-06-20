import 'dart:async';

void main() async {
  // programação síncrona
  // programação assíncrona

  var conexaoBancoDeDados = 'conexao aberta';

  // salvarNoBancoDeDados('growdev')
  //     .then((value) => print('terminou a execucao'))
  //     .catchError((error) {
  //   print('caiu no catchError do async');
  // }, test: (error) => error is AsyncError).catchError((error) {
  //   print('Caiu no catchError: $error');
  // }).whenComplete(() => print('bloco do "finally"'));

  try {
    var mensagem = await salvarNoBancoDeDados('growdev');
    print(mensagem);
    print('bloco do try');
  } on AsyncError catch (e) {
    print('catch do AsyncError');
  } on ArgumentError catch (e) {
    print('catch do ArgumentError');
  } catch (e) {
    print('catch geral');
  } finally {
    conexaoBancoDeDados = null;
    print('bloco do finally');
  }

  var resultado = await retornarNumeroAoQuadrado(5);
  print(resultado);
}

Future<String> printarMensagem(String mensagem) async {
  print('Inicou');

  await Future.delayed(Duration(seconds: 5));

  print('Finalizou');
  return mensagem;
}

Future<String> salvarNoBancoDeDados(String mensagem) async {
  print('Inicou');

  await Future.delayed(Duration(seconds: 2));
  // throw 'Erro no componente do banco de dados';
  // throw ArgumentError('Teste');
  // throw AsyncError('Teste', null);
  // throw 'Erro genérico';

  print('Finalizou');
  return mensagem;
}

Future<int> retornarNumeroAoQuadrado(int numero) async {
  var aoQuadrado = numero * numero;
  await Future.delayed(Duration(seconds: 10));
  return aoQuadrado;
}
