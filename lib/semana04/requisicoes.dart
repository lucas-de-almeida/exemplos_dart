import 'package:dio/dio.dart';
import 'dart:convert';

//https://jsonplaceholder.typicode.com/
var dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));
void main() async {
  var dadoAEnviar = json.encode({
    "title": "teste",
    "body": "teste corpo",
    "userId": 1,
  });

  var resposta = await dio.post('/posts', data: dadoAEnviar);

  print(resposta.data);
}

void requisicaoGet() async {
  var resposta = await dio.get(
    '/posts',
    queryParameters: {
      'userId': 1,
    },
  );

  List listaDeDados = resposta.data;

  listaDeDados.forEach((dado) {
    print(dado['title']);
  });
}
