import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - WHILE 05
  /*
  Obtener el promedio de calificaciones de un grupo de n alumnos.
  */

  //DECLARACION DE VARIABLES
  int cant_estudiantes, contador = 0;
  double promedio, suma = 0, nota;

  //PROCESO
  print("ingrse la cantidad de estudiantes:");
  cant_estudiantes = int.parse(stdin.readLineSync()!);
  while (contador != cant_estudiantes) {
    print("estudiante #${contador + 1}");
    print("ingrse la nota del estudiante:");
    nota = double.parse(stdin.readLineSync()!);
    if (nota >= 1 && nota <= 5) {
      suma += nota;
      contador++;
    } else {
      print("la nota no es valida");
    }
  }
  promedio = suma / cant_estudiantes;
  print("el promedio de las notas es de: $promedio");
}
