import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - WHILE 02
  /*
  En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en ella. El salario se obtiene de la sig. forma:Si el obrero trabaja 40 horas o menos se le paga $20 por hora
  */

  //DECLARACION DE VARIABLES
  int contador = 0, cant_obreros, cant_horas, horas_extra;
  double salario, precio_horas = 20, precio_extra = 25;

  //PROCESO
  print("ingrse la cantidad de trabajadores:");
  cant_obreros = int.parse(stdin.readLineSync()!);
  while (contador != cant_obreros) {
    print("obrero #${contador + 1}");
    print("ingrse la cantidad de horas trabajadas:");
    cant_horas = int.parse(stdin.readLineSync()!);
    horas_extra = cant_horas - 40;
    if (horas_extra > 0) {
      salario = (precio_horas * 40) + (precio_extra * horas_extra);
    } else {
      salario = precio_horas * cant_horas;
    }
    print("el sueldo total es de: $salario");
    contador++;
  }
}
