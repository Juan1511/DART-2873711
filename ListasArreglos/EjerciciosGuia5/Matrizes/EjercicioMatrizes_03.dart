import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - MATRIZES 02
  /*
  La compañía manufacturera Monte Real fábrica 5 artículos diferentes y se trabajan tres turnos por día, la compañía necesita obtener un reporte al final del día del total de la producción por artículo y el total de la producción por turno. Desarrollar un programa que pida al usuario el nombre de cada artículo y la producción que se hizo en cada uno de los tres turnos del día y genere un reporte al final del día mostrado en pantalla el total de de la producción por artículo, el total de la producción por turno y el artículo con mayor producción.
  
  Articulo\Turno       Turno1     Turno2     Turno3  
  Articulo 1            30          40         20
  Articulo 2            10          12         15 
  Articulo 3             8          10          7
  Articulo 4            25          30         30
  Articulo 5            12          20         10
  */

  List<List<int>> matrizProduccion = [
    [30, 40, 20],
    [10, 12, 15],
    [8, 10, 7],
    [25, 30, 30],
    [12, 20, 10],
  ];
  List<int> totalArticulos = [0, 0, 0, 0, 0];
  List<int> totalTurnos = [0, 0, 0];
  int mayorProd = 0, posicionMayorProd = 0;

  for (int i = 0; i < matrizProduccion.length; i++) {
    for (int j = 0; j < matrizProduccion[0].length; j++) {
      totalArticulos[i] += matrizProduccion[i][j];
      totalTurnos[j] += matrizProduccion[i][j];
    }
  }
  for (int i = 0; i < totalArticulos.length; i++) {
    print("el total de articilos #${i + 1} es: ${totalArticulos[1]}");
  }
  print("*" * 30);
  for (int i = 0; i < totalTurnos.length; i++) {
    print("el total de articilos #${i + 1} es: ${totalTurnos[1]}");
  }
  for (int i = 0; i < totalArticulos.length; i++) {
    if (totalArticulos[i] > mayorProd) {
      mayorProd = totalArticulos[i];
      posicionMayorProd = i;
    }
  }
  print(
      "el articulo de mayor producion es el articulo #${posicionMayorProd + 1}");
  stdout.write(" con una produccion de $mayorProd");
}
