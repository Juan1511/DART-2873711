import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES SIMPLES 04
  /*
  Hacer  un  algoritmo  que  imprima  el  nombre  de  un  artículo,  clave,  precio  original  y  su  precio  con descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave es 2 el descuento en del 20% (solo existen dos claves).
  */

  //DEFINICION DE VARIABLES
  String? nombre_articulo;
  int clave;
  double precio_original, precio_descuento, descuento;

  //ENYTRADA DE DATOS
  print("digite el nombre de articulo:");
  nombre_articulo = stdin.readLineSync();
  print("digite el precio del articulo:");
  precio_original = double.parse(stdin.readLineSync()!);
  print("digite la clave de descuento:");
  clave = int.parse(stdin.readLineSync()!);

  //PROCESO 
  precio_descuento = 0;
  if(clave == 1){
    descuento = precio_original*0.1;
    precio_descuento = precio_original - descuento;
  }
  if(clave == 2){
    descuento = precio_original*0.2;
    precio_descuento = precio_original - descuento;
  }

  //SALIDA
  print("nombre del articulo: $nombre_articulo \nprecio original: $precio_original \nclave de descuento: $clave \nprecio con descuento: $precio_descuento");
}