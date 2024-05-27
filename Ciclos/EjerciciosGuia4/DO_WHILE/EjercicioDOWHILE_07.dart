import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - DOWHILE 07

  /*
  Hacer un programa que lea caracteres desde teclado hasta que lea 10 veces la letra 'a'. Por cada carácter leído que no sea una 'a' debe mostrar un mensaje indicándolo. Cuando lea las 10 letras 'a' el programa terminará.
  */

  //DECLARACION DE VARIABLES
  String? letra;
  int contador = 0;
  //ENTRADA, PROCESO Y SALIDA
  do {
    print("Ingrese una letra:");
    letra = stdin.readLineSync();
    letra = letra!.toLowerCase();
    if (letra != "a") {
      print("letra no valida");
    } else {
      contador++;
    }
  } while (contador != 10);
}
