import 'dart:convert';
import 'dart:io';
import 'dart:core';

String? console1(String texto) {
  print(texto);
  var line1 = stdin.readLineSync(encoding: utf8);

  print("line1 = $line1");

  if (line1 != null && line1.isNotEmpty) {
    final regex = RegExp(r'^[a-zA-Z]+$');

    if (regex.hasMatch(line1)) {
      print("Entrada valida: ========> $line1");
    }
    if (regex.hasMatch(line1) == false || (line1 == "")) {
      print("Entrada invalida");
      return '0';
    }
  }
  return line1;
}

String? console2(String texto) {
  print(texto);
  var line2 = stdin.readLineSync(encoding: utf8);

  print("line2 = $line2");

  if (line2 != null && line2.isNotEmpty) {
    final regex = RegExp(r'^[a-zA-Z]+$');

    if (regex.hasMatch(line2) == false) {
      print("Entrada valida:=======> $line2");
    }
    if (regex.hasMatch(line2) == true) {
      print("A entrada não comeca com numero");
      return '0';
    }
    if (line2 == "") {
      print("Entrada invalida");
      return '0';
    }
  }
  return line2;
}
