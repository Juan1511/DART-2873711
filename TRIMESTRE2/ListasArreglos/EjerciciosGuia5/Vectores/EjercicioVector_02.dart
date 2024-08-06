import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - VECTOR 02
  /*
  Llenar  dos  vectores  A  y  B  de  10  elementos  cada  uno,  sumar  el  elemento  uno  del  vector  A  con  el elemento uno del vector B y así sucesivamente hasta 10, almacenar el resultado en un vector C, e imprimir el vector resultante.
  */

  List<double> numerosLA = [];
  List<double> numerosLB = [];
  List<double> sumaListasC = [];

  int cantNumeros = 10;
  double num1, num2;

  for (var i = 0; i < cantNumeros; i++) {
    print("ingrese los numeros #${i + 1} lista A");
    num1 = double.parse(stdin.readLineSync()!);
    numerosLA.add(num1);
    print("ingrese los numeros #${i + 1} lista B");
    num2 = double.parse(stdin.readLineSync()!);
    numerosLB.add(num2);

    print(numerosLA);
    print(numerosLB);
  }
  for (var i = 0; i < cantNumeros; i++) {
    sumaListasC.add(numerosLA[i] + numerosLB[i]);
    print('*' * 50);
  }
  print("la suma de los nuemros de la lista es: ");
  print(sumaListasC);
}
