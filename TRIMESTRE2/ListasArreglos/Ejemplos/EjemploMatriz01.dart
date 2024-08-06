// ignore_for_file: unused_local_variable

import 'dart:io';

void main(List<String> args) {
  //DEFINICION MATRIZ
  List<List<int>> matriz1;

  //DEFINICIO E INICIALIZACION DE MATRIZ
  List<List<int>> matriz2 = [];

  //DEFINIR E INICIALIZAR CON VALORES
  List<List<int>> matriz3 = [
    [3, 5, 7, 9],
    [2, 4, 6, 8],
    [1, 8, 9, 12]
  ];

  //ACCEDER A LOS ELEMENTOS
  print(matriz3);
  print(matriz3[1][2]);
  print(matriz3[2][3]);
  print(matriz3[0][2]);
  print("*" * 30);

  //MODIFICAR LOS ELEMTOS DE LA MATRIZ
  matriz3[2][1] = 7;
  matriz3[2][3] = 11;
  print(matriz3[2][1]);
  print(matriz3[2][3]);
  print(matriz3);

  //TAMAÑO MATRIZ
  print("cantidad filas: ${matriz3.length}");
  print("cantida columnas: ${matriz3[0].length}");

  //IMPRIMIR TODOS LOS ELEMTOS DE LA LISTA
  for (int i = 0; i < matriz3.length; i++) {
    stdout.write("|");
    for (int j = 0; j < matriz3[0].length; j++) {
      stdout.write("${matriz3[i][j]}|");
    }
    print("");
  }
}
