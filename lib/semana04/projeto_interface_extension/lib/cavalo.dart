import 'animal.dart';
import 'animal_classe.dart';
import 'animal_interface.dart';

class Cavalo extends AnimalClasse implements Animal, AnimalInterface {
  String nome = 'Pé de pano';

  @override
  void andar() {
    print('o cavalo andou!');
  }

  @override
  void comer() {
    print('o cavalo comeu!');
  }

  @override
  void teste() {
    // TODO: implement teste
  }
}
