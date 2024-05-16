import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - WHILE 01
  /*
  Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de sus  ventas.  El  gerente  de  su  compañía  desea  saber  cuanto  dineroobtendrá  en  la  semana  cada vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta su sueldo base y sus comisiones.
  */

  //DECLARACION DE VARIABLES
  int cant_vendedores, contador = 0, cant_ventas = 3;
  double sueldoBase, ventas, total_ventas = 0, comision, sueldo_total;

  //PROCESO
  print("ingrese la cantidad de vendedores:");
  cant_vendedores = int.parse(stdin.readLineSync()!);
  print("ingrse el sueldo de los vendedores:");
  sueldoBase = double.parse(stdin.readLineSync()!);

  while (contador < cant_vendedores) {
    for (int i = 0; i < cant_ventas; i++) {
      print("ingrse el valor de la venta ${i + 1} del vendedor ${contador+1}");
      ventas = double.parse(stdin.readLineSync()!);
      while(ventas < 0 || ventas > 10000000 ){
        print("la venta esta fuera del rango, ingrse de nuevo:");
        ventas = double.parse(stdin.readLineSync()!);

      }
      total_ventas += ventas;
    }
    comision = total_ventas * 0.1;
    sueldo_total = sueldoBase + comision;
    print("la comision por ventas es de: $comision");
    print("el sueldo total es: $sueldo_total");

    contador++;
  }
}
