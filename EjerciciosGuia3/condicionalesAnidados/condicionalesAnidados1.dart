import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES ANIDADOS 01
  /*
  Dado tres números calcular el mayor
  */

  //DECLARACION DE VARIABLES
  int numer01, numer02, numer03, mayor;

  //ENTRADA DE DATOS
  print("ingrese el primer valor:");
  numer01 = int.parse(stdin.readLineSync()!);
  print("ingrese el segundo valor:");
  numer02 = int.parse(stdin.readLineSync()!);
  print("ingrese el tercer valor:");
  numer03 = int.parse(stdin.readLineSync()!);

  //PROCESO
  if (numer01 >= numer02) {
    if (numer01 >= numer03) {
      mayor = numer01;
    } else {
      mayor = numer03;
    }
  } else {
    if (numer02 >= numer03) {
      mayor = numer02;
    } else {
      mayor = numer03;
    }
  }

  // SALIDA
  print("El número mayor es: $mayor");
}
