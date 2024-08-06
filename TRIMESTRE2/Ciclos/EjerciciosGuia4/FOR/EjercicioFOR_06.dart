import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - FOR 06

  /*
  Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los niños, jóvenes, adultos y adultos mayores que existen en su zona habitacional. Se determinan las categorías con base  en la sig, tabla
  */

  //DECLARACION DE VARIABLES
  int cant_jovenes = 0,
      cant_adultos = 0,
      cant_ninios = 0,
      cant_adultosMayores = 0,
      edad;
  double suma_jovenes = 0,
      suma_ninios = 0,
      suma_adultos = 0,
      suma_adultosMayores = 0,
      promedio_jovenes,
      promedio_ninios,
      promedio_adultos,
      promedio_adultosMayores,
      peso;

  //PROCESO
  for (int i = 0; i < 50; i++) {
    print("ingrese la edad:");
    edad = int.parse(stdin.readLineSync()!);
    print("ingrese su peso:");
    peso = double.parse(stdin.readLineSync()!);
    if (edad <= 12) {
      suma_ninios += peso;
      cant_ninios++;
    } else if (edad <= 29) {
      suma_jovenes += peso;
      cant_jovenes++;
    } else if (edad <= 59) {
      suma_adultos += peso;
      cant_adultos;
    } else {
      suma_adultosMayores += peso;
      cant_adultosMayores;
    }
  }
  promedio_ninios = suma_ninios / cant_ninios;
  promedio_jovenes = suma_jovenes / cant_jovenes;
  promedio_adultos = suma_adultos / cant_adultos;
  promedio_adultosMayores = suma_adultosMayores / cant_adultosMayores;
  if (cant_ninios == 0) {
    promedio_ninios = 0;
  }
  if (cant_jovenes == 0) {
    promedio_jovenes = 0;
  }
  if (cant_adultos == 0) {
    promedio_adultos = 0;
  }
  if (cant_adultosMayores == 0) {
    promedio_adultosMayores = 0;
  }
  //SALIDA
  print("el promedio de ninios es: $promedio_ninios");
  print("el promedio de jovenes es: $promedio_jovenes");
  print("el promedio de adultos es: $promedio_adultos");
  print("el promedio de adultos mayores es: $promedio_adultosMayores");
}
