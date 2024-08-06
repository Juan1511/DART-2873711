import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES MULTIPLES 03

  //DECLARACION DE VARIABLES
  int Tipo_numero;
  num valor, resultado;

  //ENTRDA DE DATOS
  print("ingrse el valor:");
  valor = double.parse(stdin.readLineSync()!);
  print("ingrese el tipo de operacion:");
  Tipo_numero = int.parse(stdin.readLineSync()!);

  //PROCESO
  resultado = 0;
  switch (Tipo_numero) {
    case 1:
      resultado = 100 * valor;
      break;
    case 2:
      resultado = pow(100, valor);
      break;
    case 3:
      resultado = 100 / valor;
      break;
    default:
      print("0");
      break;
  }

  //SALIDA
  print("el resultado de la operacion es: $resultado");
}
