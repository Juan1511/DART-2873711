import 'dart:io';

void main(List<String> args) {
/*
desarrollar un algoritmo tal que, dado como datos 10 numeros enteros.
se mostrara la suma de dichos numeros 
*/

  int num, suma =0;
  double promedio;

  for (int i = 0; i < 10; i++){
    print("digite el numero:" +(i+1).toString());
    num = int.parse(stdin.readLineSync()!);
    suma += num;
  }
  promedio = suma/10;
  print("el promedio es: $promedio");

}