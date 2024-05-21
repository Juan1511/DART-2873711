import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES MULTIPLES 04

  //DEFINICION DE VARIABLES

  int x;
  // ignore: unused_local_variable
  num resultado, mod, numero;

  //ENTRADA DE DATOS
  print("ingrese el valor de X:");
  x = int.parse(stdin.readLineSync()!);

  //PROCESO
  resultado = 0;
  mod = x % 4;
  numero = mod.toInt();

  switch (mod) {
    case 0:
      resultado = pow(x, 2);
      break;
    case 1:
      resultado = x / 6;
      break;
    case 2:
      resultado = sqrt(x);
    case 3:
      resultado = pow(x, 3) + 5;
      break;
    default:
      print("sin operacion a realizar");
      break;
  }
  //SALIDA
  print("el resultado con el valor de x es: $resultado");
}
