import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA RINCON / CONDICIONALES MULTIPLES 05
  /*
  El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el país destino, y del número de minutos hablados.En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una clave.
  */

  //DECLARACION DE VARIABLES

  double minutos, precio, total, clave;

  //ENTRADA DE DATOS

  print("ingreseel numero de minutos utilizados:");
  minutos = double.parse(stdin.readLineSync()!);
  print("ingrese la clave de su ubicacion:");
  clave = double.parse(stdin.readLineSync()!);

  //PROCESO
  precio = 0;
  switch (clave) {
    case 12:
      precio = 200;
      break;
    case 15:
      precio = 220;
      break;
    case 18:
      precio = 450;
      break;
    case 19:
      precio = 350;
      break;
    case 23:
      precio = 600;
      break;
    case 25:
      precio = 600;
      break;
    case 29:
      precio = 500;
      break;
    default:
      print("no se ha encontrada esta clave de zona");
      break;
  }
  total = minutos * precio;

  //SALIDA
  print("el total a pagar por los minutos utilizados es de: $total");
}
