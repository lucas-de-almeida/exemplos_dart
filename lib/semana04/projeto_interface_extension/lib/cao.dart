
import 'animal.dart';

class Cao implements Animal {
  @override
  void teste() {
    print('teste');
  }

  @override
  void andar() {
    print('o cachorro andou!!');
  }

  @override
  void comer() {
    print('o cachorro comeu!!');
  }

  @override
  int idade;
}
