import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES SIMPLES 06
  /*
  En  un  supermercado  se  hace  una  promoción,  mediante  la  cual  el  cliente  obtiene  un  descuento dependiendo  de  un  número  que  se  escoge  al  azar.  Si  el  numero  escogido  es  menor  que  74  el descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%. Obtener cuánto dinero se le descuenta.
  */

  //DECLARACION DE VARIABLES
  double precio_original, descuento, precio_total;
  int numeroAzar;

  //ENTRADA DE DATOS
  print("ingrese el precio a pagar:");
  precio_original = double.parse(stdin.readLineSync()!);
  numeroAzar = Random().nextInt(100);
  print("el numero al azar es: $numeroAzar");

  //PROCESO
  descuento = 0;
  if (numeroAzar < 74) {
    descuento = precio_original * 0.15;
  }
  if (numeroAzar > 74) {
    descuento = precio_original * 0.2;
  }
  precio_total = precio_original - descuento;

  //SALIDA
  print("el precio total es: $precio_total");
}
