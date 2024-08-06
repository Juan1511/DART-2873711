import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES DOBLES 04
  /*
  Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: Si los ingresos del comprador  son  mayores  o  iguales  a  $800000  la  cuota  inicial  será  del  15%  del  costo  de  la  casa  y  el  resto  se distribuirá en pagos mensuales, a pagar en diez años. Si los ingresos del comprador son inferiores a de $800000 la cuota inicial será del 30% del costo de la casa y el resto se distribuirá en pagos mensuales a pagar en 7 años.La  empresa  quiere  saber  cuanto  debe  pagar  un  comprador  por  concepto  de  cuota  inicial  y  cuanto  por  cada pago mensual ingresando el valor de la casa.
  */

  //DECLARACION DE VARIABLES
  double ingresos, cuota_inicial, costo_casa, cuotas;

  //ENTRADA DE DATOS
  print("digite los ingresos del usuario:");
  ingresos = double.parse(stdin.readLineSync()!);
  print("ingrese el costo de la casa:");
  costo_casa = double.parse(stdin.readLineSync()!);

  //PROCESO
  if (ingresos >= 800000) {
    cuota_inicial = costo_casa * 0.15;
    cuotas = (costo_casa - cuota_inicial) / 10;
  } else {
    cuota_inicial = costo_casa * 0.30;
    cuotas = (costo_casa - cuota_inicial) / 7;
  }

  //SALIDA
  print(
      "la cuota inicial que debe pagar es de: $cuota_inicial \nlos pagos mensuales son de: $cuotas");
}
