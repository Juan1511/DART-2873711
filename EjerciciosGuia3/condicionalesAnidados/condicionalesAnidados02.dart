import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES ANIDADOS 02
  /*
  Dado el monto de una compra calcular el descuento considerado
  •Descuento es 20% si el monto es mayor a 20000 pesos.
  •Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000 pesos.
  •no hay descuento si el monto es menor o igual a 10000 pesos.
  */

  //DECLARACION DE VARIABLES
  double montoCompra, montoFinal, descuento;

  //ENTRDA DE DATOS
  print("ingrese el monto de la compra:");
  montoCompra = double.parse(stdin.readLineSync()!);

  // PROCESO
  if (montoCompra > 20000) {
    descuento = montoCompra * 0.2;
  } else if (montoCompra > 10000 && montoCompra <= 20000) {
    descuento = montoCompra * 0.1;
  } else {
    descuento = 0;
  }

  montoFinal = montoCompra - descuento;

  // SALIDA
  print("El descuento aplicado es: $descuento");
  print("El monto final a pagar es: $montoFinal");
}
