import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - WHILE 08

  /*
  Encontrar el mayor valor de un conjunto de n números dados.
  */

  //DECLARACION DE VARIABLES
  int contador = 0, numeros, num, valor_mayor;

  //PROCESO
  print("ingrse la cantidad de numeros:");
  numeros = int.parse(stdin.readLineSync()!);
  if (numeros != 0) {
    print("ingrse el numero:");
    num = int.parse(stdin.readLineSync()!);
    contador++;
    valor_mayor = num;
  } else {
    valor_mayor = 0;
  }
  while (contador != numeros) {
    print("ingrse el numero");
    num = int.parse(stdin.readLineSync()!);
    if (num > valor_mayor) {
      valor_mayor = num;
    }
    contador++;
  }
  print("el  numero mayor es: $valor_mayor");
}
