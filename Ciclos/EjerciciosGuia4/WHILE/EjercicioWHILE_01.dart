import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - WHILE 01
  /*
  Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de sus  ventas.  El  gerente  de  su  compañía  desea  saber  cuanto  dineroobtendrá  en  la  semana  cada vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta su sueldo base y sus comisiones.
  */

  //DECLARACION DE VARIABLES
  int cantidad_vendedores, contador;
  double total_ventas, sueldo_normal, comision, venta, sueldo_total;

  //PROCESO
  contador = 0;
  total_ventas = 0;
  print("ingrese la cantidad de vendedores:");
  cantidad_vendedores = int.parse(stdin.readLineSync()!);
  while (contador != cantidad_vendedores) {
    print("vendedor" + (contador + 1).toString());
    print("ingrse su sueldo normal:");
    sueldo_normal = double.parse(stdin.readLineSync()!);
    for (int i = 0; i < 3; i++) {
      print(
          "ingrse la cantidad que se vendio en la venta" + (i + 1).toString());
      venta = double.parse(stdin.readLineSync()!);
      total_ventas += venta;
    }
    comision = total_ventas * 0.1;
    sueldo_total = sueldo_normal + comision;
    print("el sueldo total es de: $sueldo_total");
    contador++;
  }
}
