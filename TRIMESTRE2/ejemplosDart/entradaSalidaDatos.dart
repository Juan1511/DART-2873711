import 'dart:io';

void main() {
  // DEFINICION DE VARIABLES
  String? nombre;
  //nombre = "Juan"

  // ENTRADA DE ALGORITMO
  stdout.writeln("ejemplo 01 - entrada/salida datos");
  stdout.writeln("ingrese su nombre");
  nombre = stdin.readLineSync();

  // SALIDA DEL ALGORITMO
  print("su nombre es: $nombre");
}
