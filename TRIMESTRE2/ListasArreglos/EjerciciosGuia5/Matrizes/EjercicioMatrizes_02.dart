import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - MATRIZ 02
  /*
  Hacer un algoritmo que llene una matriz de 10 * 10 y determine la posición [fila, columna] del número mayor almacenado en la matriz. Los números son diferentes.
  */

  List<List<int>> matriz = [];
  for (int i = 0; i < 10; i++) {
    List<int> fila = [];
    for (int j = 0; j < 10; j++) {
      fila.add(0);
    }
    matriz.add(fila);
  }

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      print("Ingrese el número para la posición $i, $j: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  int maximo = matriz[0][0];
  int filaMax = 0;
  int columnaMax = 0;

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      if (matriz[i][j] > maximo) {
        maximo = matriz[i][j];
        filaMax = i;
        columnaMax = j;
      }
    }
  }

  print("El número máximo es: $maximo");
  print("Posición: [fila $filaMax, columna $columnaMax]");
}
