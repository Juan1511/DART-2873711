import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - WHILE 04
  /*
  El Depto. de Seguridad Publica y Transito del D.F. desea saber, de los n autos que entran a la ciudad de México, cuantos entran con calcomanía de cada color. Conociendo el último dígito de la placa de cada automóvil se puede determinar el color de la calcomanía utilizando la sig. relación:
  DÍGITO | COLOR
  1 o 2 | amarilla
  3 o 4 | rosada 
  5 o 6 | roja
  7 o 8 | verde
  9 o 0 | azul
  */
  //DECLARACION DE VARIABLES
  int contador = 0,
      cant_autos,
      digito,
      cant_amarilla = 0,
      cant_rosada = 0,
      cant_roja = 0,
      cant_verde = 0,
      cant_azul = 0;

  //PROCESO
  print("ingrse la cantidad de autos que entraron:");
  cant_autos = int.parse(stdin.readLineSync()!);
  while (contador != cant_autos) {
    print("auto #${contador + 1}");
    print("ingrse el ultimo digito de la placa del auto:");
    digito = int.parse(stdin.readLineSync()!);
    if (digito == 1 || digito == 2) {
      cant_amarilla++;
      contador++;
    } else if (digito == 3 || digito == 4) {
      cant_rosada++;
      contador++;
    } else if (digito == 5 || digito == 6) {
      cant_roja++;
      contador++;
    } else if (digito == 7 || digito == 8) {
      cant_verde++;
      contador++;
    } else if (digito == 9 || digito == 0) {
      cant_azul++;
    } else {
      print("el digito es incorrecto");
    }
  }
  print("la cantidad de carros con fichas amarillas es de: $cant_amarilla");
  print("la cantidad de carros con fichas rosadas es de: $cant_rosada");
  print("la cantidad de carros con fichas rojas es de: $cant_roja");
  print("la cantidad de carros con fichas verdes es de: $cant_verde");
  print("la cantidad de carros con fichas azules es de: $cant_azul");
}
