import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES DOBLES 02
  /*
  Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera:
  •Si trabaja 40 horas o menos se le paga $16 por hora
  •Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora extra.
  */

  //DECLARACION DE VARIABLES
  double horas_trabajadas, horas_extra, total;

  //ENTRDA DE DATOS
  print("digite las horas trabajadas");
  horas_trabajadas = double.parse(stdin.readLineSync()!);

  //PROCESO
  if (horas_trabajadas <= 40) {
    total = horas_trabajadas * 16;
  } else {
    horas_extra = horas_trabajadas - 40;
    total = (40 * 16) + (horas_extra * 20);
  }

  //SALIDA
  print("el total a pagar es de: $total");
}
