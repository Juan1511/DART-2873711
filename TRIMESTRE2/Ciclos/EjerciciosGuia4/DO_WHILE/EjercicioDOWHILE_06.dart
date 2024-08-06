import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - DOWHILE06

  /*
  Leer por cada alumno de Diseño estructurado de algoritmos su número de control y su calificación en cada una de las 5 unidades de la materia. Al final que escriba el número de control del alumno que obtuvo mayor promedio. Suponga que los alumnos tienen diferentes promedios.
  */

  //DECLARACION DE VARIABLES
  double nota, promedio, may_Promedio = 0, suma_nota = 0;
  int control = 0, cant_estudiantes, contador = 0;
  print("ingrse la cantidad de estudiantes:");
  cant_estudiantes = int.parse(stdin.readLineSync()!);
  do {
    print("Estudiante #${contador + 1}");
    suma_nota = 0;
    for (int i = 0; i < 5; i++) {
      print("Digite la nota ${i + 1}");
      nota = double.parse(stdin.readLineSync()!);
      while (nota < 0 || nota > 5) {
        print("Nota no valida");
        nota = double.parse(stdin.readLineSync()!);
      }
      suma_nota += nota;
    }
    promedio = suma_nota / 5;
    if (promedio > may_Promedio) {
      may_Promedio = promedio;
      control = contador + 1;
    }
    print("*" * 20);
    contador++;
  } while (contador < cant_estudiantes);
  print("el promedio mayor es: $may_Promedio");
  print("la mejor nota hasta el momento es: $control");
}
