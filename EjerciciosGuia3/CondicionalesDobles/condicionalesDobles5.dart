import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - CONDICIONALES DOBLES 05
  /*
  Un  cliente  ordena  cierta  cantidad  de  brochas  de  cerda  y  rodillos;  las  brochas  de  cerda  tienen  un  20%  de descuento y los rodillos un 15% de descuento. Los datos que se tienen por cada tipo de artículo son: la cantidad pedida  y  el  precio  unitario.  Además,  sise  paga  de  contado  todo  tiene  un  descuento  del  7%.  Elaborar  un programa que calcule y muestre en  pantalla el costo total de la orden, tanto para el pago de contado como para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el usuario ingresa 2.
  */

  //DECLARACION DE VARIABLES 
  int brochas, rodillos, tipo_pago;
  double brochas_precio, rodillos_precio, precio_contado, precio_credito, total_brochas, total_rodillos, descuentos_brochas, descuentos_rodillos, descuento_contado;

  //ENTRADA DE DATOS
  print("digite el precio por unidad de las brochas:");
  brochas_precio = double.parse(stdin.readLineSync()!);
  print("digite el precio por unidad de los rodillos:");
  rodillos_precio = double.parse(stdin.readLineSync()!);
  print("ingrese la cantidad de brochas");
  brochas = int.parse(stdin.readLineSync()!);
  print("ingrese la cantidad de rodillos");
  rodillos = int.parse(stdin.readLineSync()!);
  print("ingrese el 1 si paga de contado o 2 si pagara a credito");
  tipo_pago = int.parse(stdin.readLineSync()!);

  //PROCESO
  total_brochas = brochas*brochas_precio;
  descuentos_brochas = total_brochas*0.2;
  total_brochas = total_brochas - descuentos_brochas;
  total_rodillos = rodillos*rodillos_precio;
  descuentos_rodillos = total_rodillos*0.15;
  total_rodillos = total_rodillos - descuentos_rodillos;
  precio_credito = total_rodillos + total_brochas;
  descuento_contado = precio_credito*0.07;
  precio_contado = precio_credito - descuento_contado;
  if(tipo_pago == 1){
    print("a contado debe pagar: $precio_contado");
  }else{
    print("a credito debe pagar: $precio_credito");
  }
}