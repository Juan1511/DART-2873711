import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES ANIDADOS 07
  /*
  Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los reste y si no que los sume.
  */

  //DECLARACIÓN DE VARIABLES
  int numero1, numero2, resultado;

  //ENTRADA DE DATOS
  print("Ingrese el numero 1 y el numero 2");
  numero1 = int.parse(stdin.readLineSync()!);
  numero2 = int.parse(stdin.readLineSync()!);

  //PROCESO
  if (numero1 == numero2) {
    resultado = numero1 * numero2;
  } else if (numero1 > numero2) {
    resultado = numero1 - numero2;
  } else {
    resultado = numero1 + numero2;
  }

  //SALIDA
  print("el resultado es: $resultado");
}
