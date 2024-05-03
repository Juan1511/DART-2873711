import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES MULTIPLES 01
  /*
  

  */

  //DECLARACION DE VARIABLES
  String? nombreCliente;
  int tipoCliente;
  int cantEscobas, cantRecogedores, cantAromat;
  int precioEscoba = 3000, precioRecogedor = 1000, precioAromat = 1000;
  double descuento, totalCompra, subTotal;

  //ENTRADA DE DATOS
  print("cual es su nombre:");
  nombreCliente = stdin.readLineSync();
  print("cual es su categoria:");
  tipoCliente = int.parse(stdin.readLineSync()!);
  print("cual es la cantidad de escobas, recogedores, aromatizantes:");
  cantEscobas = int.parse(stdin.readLineSync()!);
  cantRecogedores = int.parse(stdin.readLineSync()!);
  cantAromat = int.parse(stdin.readLineSync()!);

  //PROCESO
  subTotal = (cantEscobas.toDouble() * precioEscoba) +
      (cantRecogedores.toDouble() * precioRecogedor) +
      (cantAromat.toDouble() * precioAromat);
  switch (tipoCliente) {
    case 1:
      descuento = subTotal * 0.05;
      break;
    case 2:
      descuento = subTotal * 0.08;
      break;
    case 3:
      descuento = subTotal * 0.12;
      break;
    case 4:
      descuento = subTotal * 0.15;
      break;
    default:
      print("la categoria es incorrecta");
      descuento = 0;
  }
  totalCompra = subTotal - descuento;

  //SALIDA
  print("su nombre es: $nombreCliente");
  print("subtotal a pagar: $subTotal");
  print("el descuento es: $descuento");
  print("el total a pagar es de: $totalCompra");
}
