import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - FOR 08
  /*
  Un alumno de la clase de lógica matemática desea desarrollar un programa que calcule el factorial de un número N, el cual le dará al usuario, el factorial de un número N, definido matemáticamente como N! se obtiene como la multiplicación de todos los números que están desde el 1 hasta el N = 1 * 2 * 3 * ..... (N-2) * (N-1) * N, como se muestra en la figura, por definición el factorial de 0 es 1.
  */

  //DECLARACION DE VARIABLES
  int factorial, resultado = 1;

  //PROCESO
  print("ingrese el numero para calcular factorial:");
  factorial = int.parse(stdin.readLineSync()!);
  if (factorial == 0) {
    resultado = 1;
  } else {
    for (int i = factorial; i > 0; i--) {
      resultado = resultado * (i);
    }
  }
  //SALIDA
  print("$factorial! = $resultado");
}
