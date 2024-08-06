import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CODICIONALES SIMPLES 03
  /*
  El jefe deunalmacén de ropa, pone una promoción en sus trajes por un período de tres días para sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al precio normal.
  */

  // DEFINICION DE VARIABLES
  double precio, descuento;
  int num_trajes;

  //ENTRADA DE DATOS
  print("digite la cantidad de trajes comprados:");
  num_trajes = int.parse(stdin.readLineSync()!);
  print("ingrese el total a pagar de los trajes:");
  precio = double.parse(stdin.readLineSync()!);

  //PROCESO
  if (num_trajes >= 3) {
    descuento = precio * 0.17;
    precio = precio - descuento;
  }

  //SALIDA
  print("el precio a pagar por los trajes es de: $precio");
}
