import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - MATRIZES 01
  /*
  Hacer un algoritmo que almacene números en una matriz de 5 * 6. Imprimir la suma de los números almacenados en la matriz.
  */
  
  List<List<double>> matriz = [];
  double suma = 0;
  int cantFilas = 2, cantColumnas = 3;

  //CICLO PARA LLENAR LA MATRIZ
  for (var i = 0; i < cantFilas; i++) {
    List<double> fila = [];
    for (var j = 0; j < cantColumnas; j++) {
      print("ingrse el numero: $i,$j");
      fila.add(double.parse(stdin.readLineSync()!));
    }
    matriz.add(fila);
  }
  for (var i = 0; i < matriz.length; i++) {
    for (var j = 0; j < matriz[0].length; j++) {
      suma += matriz[i][j];
    }
  }
  //SALIDA
  print(matriz);
  print("la suma de los elementos de la matriz es suma $suma");
}
