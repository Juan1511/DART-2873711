import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - WHILE 06
  /*
  Calcular el promedio de edades de hombres, mujeres y de todo un grupo de n alumnos.
  */

  //DECLARACION DE VARIABLES
  int contador = 0,
      grupo,
      edades_hombres = 0,
      edades_mujeres = 0,
      edades = 0,
      edad,
      genero,
      mujeres = 0,
      hombres = 0;
  double promedio, promedio_hombres, promedio_mujeres;

  //PROCESO
  print("ingrse la cantidad de alumnos del grupo:");
  grupo = int.parse(stdin.readLineSync()!);
  while (contador != grupo) {
    print("alumno #${contador + 1}");
    print("ingrse (1) si es mujer o ingrese (2) si es hombre");
    genero = int.parse(stdin.readLineSync()!);
    if (genero == 1) {
      print("ingrse la edad");
      edad = int.parse(stdin.readLineSync()!);
      mujeres++;
      edades += edad;
      edades_mujeres += edad;
      contador++;
    } else if (genero == 2) {
      print("ingrse la edad");
      edad = int.parse(stdin.readLineSync()!);
      hombres++;
      edades += edad;
      edades_hombres += edad;
      contador++;
    } else {
      print("la opcion es incorrecta");
    }
  }
  promedio_mujeres = edades_mujeres / mujeres;
  promedio_hombres = edades_hombres / hombres;
  promedio = edades / grupo;
  print("el promedio de edades de hombres es: $promedio_hombres");
  print("el promedio de edasdes de mujeres es: $promedio_mujeres");
  print("el promedio de edades del grupo es: $promedio");
}
