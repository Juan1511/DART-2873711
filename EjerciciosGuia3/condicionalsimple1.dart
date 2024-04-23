import 'dart:io';

void main(List<String> args){
  // JUAN MANUEL ZULUAGA RINCON - CONDICIONAL SIMPLE 01
  /*

  */

  //DEFINICION DE VARIABLES
  String? nombre;
  double horasTrabajadas, cuotaHora, sueldo, incentivo, descuento;

  // ENTRADA DE DATOS
  print("ingrese su nombre");
  nombre = stdin.readLineSync();
  print("digite la cantidad e horas trabajadas");
  horasTrabajadas = double.parse(stdin.readLineSync()!);
  print("ingrese le valor de la hora");
  cuotaHora = double.parse(stdin.readLineSync()!);

  // PROCESOS ALGORITMO
  sueldo = horasTrabajadas*cuotaHora;
  if(horasTrabajadas>40){
    incentivo = sueldo*0.05;
    sueldo = sueldo+incentivo;
    print("se obtuvo un incentivo de $incentivo");
  }

  // SALIDA ALGORITMOS
  print("el sueldo neto es: $sueldo");


}