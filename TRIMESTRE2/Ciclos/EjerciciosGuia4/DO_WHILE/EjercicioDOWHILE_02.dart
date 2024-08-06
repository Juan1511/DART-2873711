import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - DOWHILE 02
  /*
  Un alumno de la clase de lógica matemática desea desarrollar un algoritmo y diagrama de flujo en el cual  introduzca  un  número  entero  positivo  e  invierta  los  dígitos  del  número.  Mostrar  el  número invertido.
  */

  //DECLARACION DE VARIABLES
  int num_incial, nuevo_numero, mod, div;

  //PROCESO
  print("el numero que desea invertir");
  num_incial = int.parse(stdin.readLineSync()!);

  nuevo_numero = num_incial;

  print("el numero inicial es: $num_incial");
  stdout.write("el numero invertido es:");
  do {
    mod = nuevo_numero % 10;
    div = nuevo_numero ~/ 10;
    stdout.write(mod);
    nuevo_numero = div;
  } while (div != 0);
}
