import 'animal.dart';

class Gato implements Animal {
  @override
  void andar() {
    print('o gato andou!!');
  }

  @override
  void comer() {
    print('o gato comeu!!');
  }

  @override
  int idade;

  @override
  void teste() {
    // TODO: implement teste
  }
}
