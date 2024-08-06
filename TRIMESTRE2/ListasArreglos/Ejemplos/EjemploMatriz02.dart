import 'dart:io';

void main(List<String> args) {
  //DEFINICION E INICIALIZACION VACIO
  List<List<int>> matriz = [];
  int cantFilas = 3, cantColumnas = 4;
  int numero;
  for (int i = 0; i < cantFilas; i++) {
    List<int> fila = [];
    for (int j = 0; i < cantColumnas; i++) {
      print("ingrse el elemento posicion: $i, $j");
      numero = int.parse(stdin.readLineSync()!);
      fila.add(numero);
    }
    print(fila);
    matriz.add(fila);
  }
  print("*" * 30);
  print(matriz);

  for (int i = 0; i < matriz.length; i++) {
    stdout.write("|");
    for (int j = 0; j < matriz[0].length; j++) {
      stdout.write("${matriz[i][j]}|");
    }
    print("");
  }
}
