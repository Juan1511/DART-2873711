import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - WHILE 06
  /*
  Encontrar el menor valor de un conjunto de n números dados.
  */

  //DECLARACION DE VARIABLES
  int contador = 0, numeros, num, valor_menor;

  //PROCESO
  print("ingrse la cantidad de numeros:");
  numeros = int.parse(stdin.readLineSync()!);
  if (numeros != 0) {
    print("ingrse el numero:");
    num = int.parse(stdin.readLineSync()!);
    contador++;
    valor_menor = num;
  } else {
    valor_menor = 0;
  }
  while (contador != numeros) {
    print("ingrse el numero");
    num = int.parse(stdin.readLineSync()!);
    if (num < valor_menor) {
      valor_menor = num;
    }
    contador++;
  }
  print("el  numero menor es: $valor_menor");
}
