import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES DOBLES 03
  /*
  Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se aplica un descuento del 20%  sobre el total de la compra y si son menos de tres camisas un descuento del 10%
  */

  //DECLARACION DE VARIABLES
  double cantidad_camisas, precio_total, descuento, precio_descuento;

  //ENTRADA DE DATOS
  print("ingrese la cantidad de camisas:");
  cantidad_camisas = double.parse(stdin.readLineSync()!);
  print("ingrese el total a pagar:");
  precio_total = double.parse(stdin.readLineSync()!);

  //PROCESO
  if(cantidad_camisas >= 3){
    descuento = precio_total*0.2;
    precio_descuento = precio_total - descuento;
  }else{
    descuento = precio_total*0.1;
    precio_descuento = precio_total - descuento;
  }

  //SALIDA 
  print("el precio a pagar es de: $precio_descuento");

}