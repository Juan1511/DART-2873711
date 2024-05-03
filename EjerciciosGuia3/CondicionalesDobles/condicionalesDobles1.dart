import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES DOBLES 01
  /*
  Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.
  */

  //DECLARACION DE VARIABLES
  double num1, num2;

  //ENTRADA DE DATOS
  print("digite el numero 1 y 2:");
  num1 = double.parse(stdin.readLineSync()!);
  num2 = double.parse(stdin.readLineSync()!);

  //PROCESO
  if (num1 > num2) {
    print("$num2, $num1");
  } else {
    print("$num1, $num2");
  }
}
