import 'dart:core';
import 'dart:math';

dynamic calculo(dynamic peso, dynamic altura) {
  // converter para 'double' e evitar erros.
  if (peso != null && peso.isNotEmpty) {
    try {
      var numero1 = double.tryParse(peso);
      var numero2 = double.tryParse(altura);
      // calcular o valor de imc.
      var n1 = numero1;
      var n2 = numero2;
      var n3 = pow(n2!, 2);
      var imc = n1! / n3;
      // verificar tipo de saída.
      print(n1.runtimeType);

      return imc;
    } catch (e) {
      FormatException("Erro de formato.");
    }
  }
}
