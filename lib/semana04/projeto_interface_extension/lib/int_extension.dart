// extension [nome] on [tipo]

import 'cavalo.dart';

extension IntExtension on int {
  int dobro() {
    return this * 2;
  }

  String dobroStringFormatado() {
    return dobro().toString().padLeft(10, '0');
  }

  String cnpjCpf() {
    if (toString().length <= 11) {
      var cpf = toString().padLeft(11, '0');
      return '${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(6, 9)}-${cpf.substring(9, 11)}';
    } else {
      var cnpj = toString().padLeft(14, '0');
      return '${cnpj.substring(0, 2)}.${cnpj.substring(2, 5)}.${cnpj.substring(5, 8)}/${cnpj.substring(8, 12)}-${cnpj.substring(12, 14)}';
    }
  }
}

extension CavaloExtension on Cavalo {
  String retornarNome() {
    return nome;
  }
}

extension StringExtension on String {
  Cavalo retornarCavalo() {
    return Cavalo()..nome = this;
  }

  String cnpjCpf() {
    if (length <= 11) {
      var cpf = padLeft(11, '0');
      return '${cpf.substring(0, 2)}.${cpf.substring(3, 5)}.${cpf.substring(6, 8)}-${cpf.substring(9, 10)}';
    } else {
      var cnpj = padLeft(14, '0');
      return '${cnpj.substring(0, 1)}.${cnpj.substring(2, 4)}.${cnpj.substring(5, 7)}/${cnpj.substring(6, 11)}-${cnpj.substring(12, 14)}';
    }
  }
}
