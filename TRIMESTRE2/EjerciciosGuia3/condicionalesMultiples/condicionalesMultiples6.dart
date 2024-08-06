import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA RINCON -CONDICIONALES MULTIPLES 06
  /*
  Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días tiene. Es necesario tener en cuenta si es año bisiesto o no.
  */

  //DECLARACION DE VARIABLES 
  String? mes;
  int dias, anio, bisiesto;
  int enero=31, febrero=28,marzo=31, abril=30,mayo=31,junio=31,julio=31,agosto=31,septiembre=30,octubre=31,noviembre=30,diciembre=31;

  //ENTRADA DE DATOS
  print("ingrese un anio:");
  anio = int.parse(stdin.readLineSync()!);
  print("ingrese el mes del anio:");
  mes = stdin.readLineSync();
  print("ingrese 0 si el anio es bisiesto si no lo es 1:");
  bisiesto = int.parse(stdin.readLineSync()!);

  //PROCESO
  dias = 0;
  if(bisiesto == 0){
    febrero = 29;
  }
  switch(mes){
    case "enero":
    dias = enero;
    break;
    case "febrero":
    dias = enero+febrero;
    break;
    case "marzo":
    dias = enero+febrero+marzo;
    break;
    case "abril":
    dias = enero+febrero+marzo+abril;
    break;
    case "mayo":
    dias = enero+febrero+marzo+abril+mayo;
    break;
    case "junio":
    dias = enero+febrero+marzo+abril+mayo+junio;
    break;
    case "julio":
    dias = enero+febrero+marzo+abril+mayo+junio+julio;
    break;
    case "agosto":
    dias = enero+febrero+marzo+abril+mayo+junio+julio+agosto;
    break;
    case "septiembre":
    dias = enero+febrero+marzo+abril+mayo+junio+julio+agosto+septiembre;
    break;
    case "octubre":
    dias = enero+febrero+marzo+abril+mayo+junio+julio+agosto+septiembre+octubre;
    break;
    case "noviembre":
    dias = enero+febrero+marzo+abril+mayo+junio+julio+agosto+septiembre+octubre+noviembre;
    break;
    case "diciembre":
    dias = enero+febrero+marzo+abril+mayo+junio+julio+agosto+septiembre+octubre+noviembre+diciembre;
    break;
    default:
    print("este mes no existe");
    break;
  }

  //SALIDA
  print("el anio $anio tuvo $dias dias");
}