import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - DOWHILE 09

  /*
  Escribir un programa que muestre el siguiente menú y que permita pasar magnitudes de grados a radianes y de radianes a grados.
  1.Pasar de grados a radianes
  2.Pasar de radianes a grados
  3.Salir del programa
  */

  //DECLARACION DE VARIABLES
  int opcion;
  double num, resultado;

  //PROCESO
  do {
    print("Bienvenido a la calculadora");
    print("1.Pasar de grados a radianes");
    print("2.Pasar de radianes a grados");
    print("3.Salir");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Ingrese los grados");
        num = double.parse(stdin.readLineSync()!);
        resultado = num * pi / 180;
        print("grados en radianes son: $resultado");
        break;
      case 2:
        print("Ingrese los radianes");
        num = double.parse(stdin.readLineSync()!);
        resultado = num * 180 / pi;
        print("radianes en grados son: $resultado");
        break;
      case 3:
        print("adios");
        break;
      default:
        print("opcion invalida");
        break;
    }
  } while (opcion != 3);
}
