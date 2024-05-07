import 'dart:io';

void main(List<String> args) {
  /* 
  desarrollar un algoritmo que lea n numeros positivos y muestre el promedio de los n numeros positivos
  */

  int contador = 0, numero, n;
  double promedio, suma = 0;

  print("ingrse la cantidad de numeros que ingrsara:");
  n = int.parse(stdin.readLineSync()!);
  while( contador < n){
        print("ingrse el nuemro:");
    numero = int.parse(stdin.readLineSync()!);
    if(numero > 0){
      suma += numero;
      contador ++;
    }else{
      print("el numero debe ser positivo");
    }
  }
  promedio = suma/n;
  print("el promedio es: $promedio");

}