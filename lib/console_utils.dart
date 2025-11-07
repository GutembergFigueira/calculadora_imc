import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

// alternativa 0
String? console(String texto) {
  print(texto);
  bool apenasLetras(String text) {
    final regex = RegExp(r'^[a-zA-Z]+$');
    return regex.hasMatch(text);
  }

  var line = stdin.readLineSync(encoding: utf8);
  var lista = [line];
  print("A lista e: $lista");

  if (line != null && line.isNotEmpty && apenasLetras(line) == true) {
    print("Entrada valida: $line");
    print(apenasLetras(line));
  }
  if (line == "" || line != null && apenasLetras(line) == false) {
    print("Entrada invalida");
    return '0';
  }
  return line ?? "";
}

String? consoleDouble(String texto) {
  print(texto);
  bool apenasLetras(String text) {
    final regex = RegExp(r'^[a-zA-Z]+$');
    return regex.hasMatch(text);
  }

  var line = stdin.readLineSync(encoding: utf8);
  var lista = [line];
  print("A lista e: $lista");

  if (line != null && line.isNotEmpty && apenasLetras(line) == false) {
    print("Entrada valida: $line");
    print(apenasLetras(line));
  }
  if (line == "" || line != null && apenasLetras(line) == true) {
    print("Entrada invalida");
    return '0';
  }
  return line ?? "";
} 














// String? consoleRegex(String texto) {
//   print(texto);
//   var line = stdin.readLineSync(encoding: utf8);
//   if (line != null && line.isNotEmpty) {
//     final regex = RegExp(r'^[a-zA-Z]');
//     if (regex.hasMatch(line)) {
//       print("Entrada valida: $line");
//     }
//   } else {
//     print("Entrada invalida");
//   }
//   return line ?? "";
// }







// // seleciona tudo que NÃO é (^) uma letra de a-z ou A-Z
//   RegExp regexApenasLetrasAscii = RegExp(r'[^a-zA-Z]');

//  // Substitui os caracteres não-letras por uma string vazia
//   String textoFiltradoAscii = textoOriginal.replaceAll(regexApenasLetrasAscii, '');

// você pode usar a propriedade Unicode \p{Letter} ou \p{L}:
  // RegExp regexTodasAsLetras = RegExp(r'[^\p{Letter}\s]', unicode: true);