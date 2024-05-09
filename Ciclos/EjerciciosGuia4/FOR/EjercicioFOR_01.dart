import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA RINCON - FOR 01
  /*
  Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño Estructurado de Algoritmos.
  */

  //DECLARACION DE VARIABLES
  double promedio, nota, suma;


  //PROCESO
  suma = 0;
  for( int i = 0; i < 7; i++){
    print("ingrse la nota:" +(i+1).toString());
    nota = double.parse(stdin.readLineSync()!);
    suma += nota;
  }
  promedio = suma/7;

  //SALIDA
  print("el promedio del estudiante es de: $promedio");



}