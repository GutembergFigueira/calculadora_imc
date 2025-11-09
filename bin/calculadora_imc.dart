import 'dart:core';
import 'dart:developer';
import 'package:calculadora_imc/classes/pessoa_fisica.dart';
import 'package:calculadora_imc/console_utils.dart' as utils;
import 'package:calculadora_imc/calculo_imc.dart' as calc;

void main(List<String> arguments) {
  var pessoa1 = PessoaFisica("Joao", 50.0, 1.80, "000.000.000-00");
  print(pessoa1);

  // console_utils
  var input1 = utils.console1("Digite o nome:");
  var input2 = utils.console2("Digite o peso:");
  var input3 = utils.console2("Digite a altura:");

  //  Inputs lines armazenados em lista.
  var lista = {};

  lista["Nome"] = input1;
  lista["Peso kg"] = input2;
  lista["Altura m"] = input3;

  print("A lista_entrada: $lista");

  // calculo de imc.
  var peso = lista["Peso kg"].replaceAll(',', '.');
  var altura = lista["Altura m"].replaceAll(',', '.');
  var calculoImc = calc.calculo(peso, altura);
  print("imc = $calculoImc");

  if (calculoImc < 16) {
    print("Resultado de IMC: Magreza grave");
  }
  if (calculoImc >= 16 && calculoImc < 17) {
    print("Resultado de IMC: Magreza moderada");
  }
  if (calculoImc >= 17 && calculoImc < 18.5) {
    print("Resultado de IMC: Magreza leve");
  }
  if (calculoImc >= 18.5 && calculoImc < 25) {
    print("Resultado de IMC: Saudavel");
  }
  if (calculoImc >= 25 && calculoImc < 30) {
    print("Resultado de IMC: Sobrepeso");
  }
  if (calculoImc >= 30 && calculoImc < 35) {
    print("Resultado de IMC: Obesidade Grau I");
  }
  if (calculoImc >= 35 && calculoImc < 40) {
    print("Resultado de IMC: Obesidade Grau II (severa)");
  }
  if (calculoImc >= 40) {
    print("Resultado de IMC: Obesidade Grau III (morbida)");
  }
}
