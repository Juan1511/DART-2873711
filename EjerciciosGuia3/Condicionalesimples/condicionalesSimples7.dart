import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES SIMPLES 07
  /*
  Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50 000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente.
  */

  //DECLARACION DE VARIABLES
  double fianza, cuota;

  //ENTRADA DE DATOS
  print("ingrese el monto de la fianza");
  fianza = double.parse(stdin.readLineSync()!);

  //PROCESO
  cuota = fianza * 0.03;
  if (fianza >= 50000) {
    cuota = fianza * 0.02;
  }

//SALIDA
  print("la cuota a pagar es de $cuota");
}
