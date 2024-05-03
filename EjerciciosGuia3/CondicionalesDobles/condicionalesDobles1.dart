import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES DOBLES 01
  /*
  Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.
  */

  //DECLARACION DE VARIABLES
  int num1, num2;

  //ENTRADA DE DATOS
  print("digite el numero 1 y 2:");
  num1 = int.parse(stdin.readLineSync()!);
  num2 = int.parse(stdin.readLineSync()!);

  //PROCESO
  if (num1 > num2) {
    print("$num2, $num1");
  } else {
    print("$num1, $num2");
  }
}
