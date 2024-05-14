import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - FOR 04
  /*
  Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos. Realizar un algoritmo para calcular la calificación promedio y la calificación más baja de todo el grupo.
  */

  //DECLARACION DE VARIABLES
  double nota_baja = 5, notas, promedio, suma;

  //PROCESO
  suma = 0;
  for (int i = 0; i < 40; i++) {
    print("ingrse las notas del grupo:");
    notas = double.parse(stdin.readLineSync()!);
    if (notas < nota_baja) {
      nota_baja = notas;
    }
    suma += notas;
  }
  promedio = suma / 40;

  //SALIDA
  print("el promedio de nota del salon es de: $promedio");
  print("la nota mas baja es: $nota_baja");
}
