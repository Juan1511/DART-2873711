import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES MULTIPLES 02
  /*
  Una compañía de fumigación utiliza aviones para fumigar las cosechas contra una gran variedad de plagas. Las cantidades que la compañía cobra a los granjeros depende de qué es lo que se desea fumigar y del número de hectáreas que se desea fumigar, de acuerdo con la siguiente distribución :

  Tipo 1 : Fumigación contra malas hierbas, $50000 por hectárea

  Tipo 2 : Fumigación contra moscas y mosquitos, $70000 por hectárea

  Tipo 3 : Fumigación contra gusanos, $80000 por hectárea.

  Tipo 4 : Fumigación contra todo lo anterior, $190000 por hectárea.

  •Si el área a fumigar es mayor de 100 hectáreas, el granjero goza de un 5% de descuento.

  •Además, si la cuenta total sobrepasa el $1000000 se hace acreedor a un 10% de descuento sobre la cantidad que sobrepase el $1000000.
  
  •Si ambos descuentos son aplicables, el correspondiente a la superficie se considera primero.

  Diseñe  el  programa  que  lea  el  nombre  del  granjero,  el  tipo  de  fumigación  solicitada  (1-4)  y  el  número  de hectáreas a fumigar. Se debe imprimir el nombre del granjero y la cuenta total.
  */

  //DECLARACION DE VARIABLES
  String? nombre;
  int tipo_fumigacion, hectares, precio_hectares;
  double subtotal, descuento1, descuento2, precio_total;

  //ENTRADA DE DATOS
  print("Ingrese su nombre");
  nombre = stdin.readLineSync();
  print("Ingrese el tipo de fumigación");
  tipo_fumigacion = int.parse(stdin.readLineSync()!);
  print("Ingrese el número de hectáreas");
  hectares = int.parse(stdin.readLineSync()!);

  //PROCESO
  descuento1 = 0;
  descuento2 = 0;
  precio_hectares = 0;
  switch (tipo_fumigacion) {
    case 1:
      precio_hectares = 50000;
      break;
    case 2:
      precio_hectares = 70000;
      break;
    case 3:
      precio_hectares = 80000;
      break;
    case 4:
      precio_hectares = 19000;
      break;
    default:
      print("No es un tipo válido");
      break;
  }
  subtotal = precio_hectares.toDouble() * hectares;
  if ((hectares > 100) & (subtotal > 1000000)) {
    descuento1 = subtotal * 0.05;
  } else if (subtotal > 1000000) {
    descuento2 = subtotal * 0.1;
  }
  precio_total = subtotal - descuento1 - descuento2;

  //SALIDA
  print("nombre cliente: $nombre");
  print("el total a pagar por las hectareas fumigadas es de: $precio_total");
}
