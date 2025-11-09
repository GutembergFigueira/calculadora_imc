import 'package:calculadora_imc/classes/pessoa_abstract.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "000.000.000-00";

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PessoaFisica(super.nome, super.peso, super.altura, String cpf) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Peso": getPeso(),
      "Altura": getAltura(),
      "CPF": _cpf,
    }.toString();
  }
}
