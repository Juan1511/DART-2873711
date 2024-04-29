import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA RINCON - CONDICIONALES ANIDADOS 05
  /*
  Una frutería ofrece las manzanas con descuento según la siguiente tabla
  Determinar cuanto pagara una persona que compre manzanas en esa frutería sabiendo que el kilo vale $1300
  */

  //DECLARACION DE VARIABLES
  double precioKilo, kilosManzana, descuento, totalCompra;

  //ENTRADA DE DATOS
  print("ingrese la cantidad de kilos comprados: ");
  kilosManzana = double.parse(stdin.readLineSync()!);

  //PROCESO
  precioKilo = 1300;

  totalCompra = kilosManzana * precioKilo;

  if (kilosManzana < 2) {
    descuento = 0;
    totalCompra = totalCompra;
  } else if (kilosManzana > 2.01 && kilosManzana < 5) {
    descuento = totalCompra * 0.1;
    totalCompra = totalCompra - descuento;
  } else if (kilosManzana > 5.01 && kilosManzana < 10) {
    descuento = totalCompra * 0.15;
    totalCompra = totalCompra - descuento;
    //DUDA RESULTADO 10
  } else if (kilosManzana > 10.01) {
    descuento = totalCompra * 0.2;
    totalCompra = totalCompra - descuento;
  }

  //SALIDA
  print("el total a pagar es de: $totalCompra");
}
