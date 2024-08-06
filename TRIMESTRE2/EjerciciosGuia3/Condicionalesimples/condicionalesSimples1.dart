import 'dart:io';

void main(List<String> args) {
  // JUAN MANUEL ZULUAGA RINCON - CONDICIONAL SIMPLE 01
  /*
  El jefe del personal de operación de la industria aceitera Móvil desea calcular el sueldo neto de sus empleados bajo las siguientes normas, solicitar el nombre del empleado, número de horas trabajadas y la cuota por hora trabajada, para calcular el sueldo neto del empleado, se le otorga un incentivo del  5%  si  el  empleado  trabajó  más  de  40  horas.  Imprimir  el  nombre  del  empleado  y  su  sueldo. 
  */

  //DEFINICION DE VARIABLES
  String? nombre;
  double horasTrabajadas, cuotaHora, sueldo, incentivo;

  // ENTRADA DE DATOS
  print("ingrese su nombre");
  nombre = stdin.readLineSync();
  print("digite la cantidad e horas trabajadas");
  horasTrabajadas = double.parse(stdin.readLineSync()!);
  print("ingrese le valor de la hora");
  cuotaHora = double.parse(stdin.readLineSync()!);

  // PROCESOS ALGORITMO
  sueldo = horasTrabajadas * cuotaHora;
  if (horasTrabajadas > 40) {
    incentivo = sueldo * 0.05;
    sueldo = sueldo + incentivo;
    print("se obtuvo un incentivo de $incentivo");
  }

  // SALIDA ALGORITMO
  print("nombre del empleado: $nombre \nel sueldo neto es de $sueldo");
}
