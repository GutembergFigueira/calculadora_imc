import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:core';
import 'package:calculadora_imc/calculo_imc.dart' as input;
import 'package:calculadora_imc/classes/pessoa_abstract.dart';
import 'package:calculadora_imc/classes/pessoa_fisica.dart';
import 'package:calculadora_imc/console_utils.dart' as utils;

void main(List<String> arguments) {
  var pessoa1 = PessoaFisica("Joao", 50.0, 1.80, "000.000.000-00");

  print(pessoa1);

  // console_utils
  var input1 = utils.console("Digite o nome:");
  var input2 = utils.consoleDouble("Digite o peso:");
  var input3 = utils.consoleDouble("Digite a altura:");

  //  Inputs lines armazenados em lista.
  var lista = {};

  lista["Nome"] = input1;
  lista["Peso kg"] = input2;
  lista["Altura m"] = input3;

  print("A lista_entrada: $lista");

  // calcular o imc.

  double calcularImc = input.Input(input2, input3);
}
