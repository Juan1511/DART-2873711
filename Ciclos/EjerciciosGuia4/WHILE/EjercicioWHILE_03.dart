import 'dart:io';

void main(List<String> args) {
  //JUAN MANUEL ZULUAGA - WHILE 03
  /*
  Determinar  cuantos  hombres  y  cuantas  mujeres  se  encuentran  en  un  grupo  de  n  personas, suponiendo que los datos son extraídos alumno por alumno.
  */

  //DECLARACION DE VARIABLES
  int grupo, cant_hombres = 0, cant_mujeres = 0, contador = 0, genero;

  //PROCESO
  print("ingrse la cantidad de personas que hay en le grupo");
  grupo = int.parse(stdin.readLineSync()!);
  while(contador != grupo){
    print("persona # ${contador+1}");
    print("ingrse (1) si es hombre o (2) si es mujer:");
    genero = int.parse(stdin.readLineSync()!);
    if(genero == 1){
      cant_hombres++;
      contador++;
    }else if(genero == 2){
      cant_mujeres++;
      contador++;
    }else{
      print("este no es un genero");
    }
  }
    print("en el grupo hay $cant_hombres hombres y $cant_mujeres mujeres");

}