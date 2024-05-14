import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - FOR 07

  /*
  Al cerrar un expendio de naranjas, 15 clientes recibirán un 15% de descuento si compran más de 10 kilos. Determinar cuánto pagará cada cliente y cuanto percibirá la tienda por esas compras.
  */

  //DECLARACION DE VARIABLES
  double descuento, precio, ganancia_total = 0, kilo, precio_kilo = 5000;

  //PROCESO
  for (int i = 0; i < 15; i++) {
    print("ingrese los kilos que va a comprar:");
    kilo = double.parse(stdin.readLineSync()!);
    precio = precio_kilo * kilo;
    if (kilo > 10) {
      descuento = precio * 0.15;
      precio = precio - descuento;
    }
    ganancia_total += precio;
    print("el cliente pagara: $precio");
  }

  //SALIDA
  print("las ganancias seran de: $ganancia_total");
}
