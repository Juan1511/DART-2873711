import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - FOR 02

  /*
  Leer 10 números e imprimir solamente los números positivos
  */

  //DECLARACION DE VARIABLES
  int numero;

  //PROCESO Y SALIDA
  for (int i = 0; i < 10; i++) {
    print("ingrese los numeros");
    numero = int.parse(stdin.readLineSync()!);
    if (numero >= 0) {
      print(numero);
    }
  }
}
