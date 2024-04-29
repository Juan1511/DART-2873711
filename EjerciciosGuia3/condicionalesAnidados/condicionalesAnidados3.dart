import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES ANIDADOS 03
  /*
  En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10% de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco pero  menos  de  diez  se  le  otorga  un  20%  de  descuento;  y  si  son  10  o  más  se  les  da  un  40%  de descuento. El precio de cada computadora es de $1100000
  */
  
  //DECLARACION DE VARIABLES 
  int numeroComputadoras;
  double precioUnitario, descuento, totalCompra, totalConDescuento;


  //  ENTRADA DE DATOS
  print("ingrese el numero de computadoras compradas:");
  numeroComputadoras = int.parse(stdin.readLineSync()!);

  //PROCESO
  precioUnitario = 1100000;

  if (numeroComputadoras < 5) {
    descuento = precioUnitario * numeroComputadoras * 0.1;
  } else if (numeroComputadoras >= 5 && numeroComputadoras < 10) {
    descuento = precioUnitario * numeroComputadoras * 0.2;
  } else if (numeroComputadoras >= 10) {
    descuento = precioUnitario * numeroComputadoras * 0.4;
  } else {
    descuento = 0;
  }

  totalCompra = precioUnitario * numeroComputadoras;

  totalConDescuento = totalCompra - descuento;

  // SALIDA
  print("El descuento aplicado es: $descuento");
  print("El total de la compra sin descuento es: $totalCompra");
  print("El total a pagar con descuento es: $totalConDescuento");
}
