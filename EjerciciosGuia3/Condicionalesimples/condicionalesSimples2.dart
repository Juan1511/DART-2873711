import 'dart:io';
void main(){
  // JUAN MANUEL ZULUAGA - CONDICIONAL SIMPLE 2

  /*
  La compañía de seguros de vida atlas se va a cambiar de domicilio y por lo tanto pone en venta su terreno pero no tiene una idea del valor del terreno, entonces solicita al departamento de sistemas que le desarrolle un algoritmo con la finalidad de que calcule e imprima el precio del terreno del cual se tiene los siguientes datos: largo, ancho y precio por metro cuadrado, si el terreno tiene más de 400 metros cuadrados se hace un descuento del 10%.
  */

  // DEFINICION DE VARIABLES
  double largo, ancho, precioM2, precioTerreno;
  double areaTerreno, descuento;

  //ENTRADA ALGORITMO
    print("ingrese el largo del tereno");
    largo = double.parse(stdin.readLineSync()!);
    print("ingrese el ancho del terreno");
    ancho = double.parse(stdin.readLineSync()!);
    print("ingrese el precio del metro cuadrado");
    precioM2 = double.parse(stdin.readLineSync()!);

    //PROCESO ALGORITMO
    areaTerreno = largo * ancho; 
    precioTerreno = areaTerreno * precioM2;
    if(areaTerreno > 400 ){
      descuento = precioTerreno - 0.1;
      precioTerreno = precioTerreno - descuento;
    }

    //SALIDA
    print("el precio del terreno es; $precioTerreno");
}