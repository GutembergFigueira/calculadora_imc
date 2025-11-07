import 'dart:math';
import 'dart:core';

// Cálculo de IMC
double Input(x, y) {
  var imc = x / pow(y, 2);
  print("O IMC e: $imc");
  return imc;
}



// String resultado = "";
// switch (imc) {
//   case imc<16: 
//       resultado = "Magreza grave";
//       break;
  // case '>= 16 or < 17':
  //      resultado = "Magreza moderada";   
      //  break;
  // case '>= 17 or < 18,5': 
  //      resultado = "Magreza leve";   
  //     //  break; 
  //  case '>= 18,5 or < 25': 
  //      resultado = "Saudavel";   
  //     //  break; 
  //   case '>= 25 or < 30': 
  //      resultado = "Sobrepeso";   
  //     //  break;                       
  //    case '>= 30 or < 35': 
  //      resultado = "Obesidade Grau I ";   
  //     //  break;    
  //     case '>= 35 or < 40': 
  //      resultado = "Obesidade Grau II (severa)";   
  //     //  break;    
  //     case '>= 40': 
  //      resultado = "Obesidade Grau III (morbida)";   
  //     //  break;   
  //      default: 0;
//        return resultado;  
       
// }

// print(resultado);     