import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES ANIDADOS 04
  /*
  En  un  montallantas  se  ha  establecido  una  promoción  de  las  llantas  marca  “Ponchadas”,  dicha promoción consiste en lo siguiente:Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la compra
  */

  //DECLARACION DE VARIABLES
  int cantidadLLantas;
  double precioUnitario, totalCompra;

  //ENTRDA DE DATOS
  print("ingrse la cantidad de llantas compradas:");
  cantidadLLantas = int.parse(stdin.readLineSync()!);

  //PROCESO
  precioUnitario = 0;

  if (cantidadLLantas < 5) {
    precioUnitario = 90000;
  } else if (cantidadLLantas >= 5 && cantidadLLantas < 10) {
    precioUnitario = 80000;
  } else if (cantidadLLantas > 10) {
    precioUnitario = 70000;
  }

  totalCompra = cantidadLLantas * precioUnitario;

  //SALIDA
  print("el precio de cada llanta es de: $precioUnitario");
  print("el total a pagar por la compra es de: $totalCompra");
}
